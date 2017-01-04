------------------------------------------------------------------------------
--	FILE:	 DWSmallContinents.lua
--	AUTHOR:  Evil Victor (Steam) / Seven05 (CivFanatics)
--	PURPOSE: Produces widely varied small continents.
------------------------------------------------------------------------------

include "MapEnums"
include "MapUtilities"
include "MountainsCliffs"
include "RiversLakes"
include "FeatureGenerator"
include "TerrainGenerator"
include "NaturalWonderGenerator"
include "ResourceGenerator"
include "AssignStartingPlots"

local g_iW, g_iH;
local g_iFlags = {};
local g_continentsFrac = nil;

------------------------------------------------------------------------------
-- The application side will call GetMapScriptInfo directly to request
-- information about the map script.
-------------------------------------------------------------------------------
function ApplyTerrain(plotTypes, terrainTypes)
	for i = 0, (g_iW * g_iH) - 1, 1 do
		pPlot = Map.GetPlotByIndex(i);
		if (plotTypes[i] == g_PLOT_TYPE_HILLS) then
			terrainTypes[i] = terrainTypes[i] + 1;
		end
		TerrainBuilder.SetTerrainType(pPlot, terrainTypes[i]);
	end
end

-------------------------------------------------------------------------------
function GenerateMap()
	print("Generating Continents Map");
	local pPlot;

	-- Set globals
	g_iW, g_iH = Map.GetGridSize();
	g_iFlags = TerrainBuilder.GetFractalFlags();
	local temperature = MapConfiguration.GetValue("temperature"); -- Default setting is Temperate.
	if temperature == 4 then
		temperature  =  1 + TerrainBuilder.GetRandomNumber(3, "Random Temperature- Lua");
	end
	
	plotTypes = GeneratePlotTypes();
	terrainTypes = GenerateTerrainTypes(plotTypes, g_iW, g_iH, g_iFlags, false, temperature);


	ApplyTerrain(plotTypes, terrainTypes);
	
	-- Temp
	AreaBuilder.Recalculate();
	local biggest_area = Areas.FindBiggestArea(false);
	print("After Adding Hills: ", biggest_area:GetPlotCount());

	-- 705: River generation moved into AddFeatures() so we can pass random rainfall value

	AddFeatures();
	
	print("Adding cliffs");
	AddCliffs(plotTypes, terrainTypes);

	local args = {
		numberToPlace = GameInfo.Maps[Map.GetMapSize()].NumNaturalWonders,
	};
	local nwGen = NaturalWonderGenerator.Create(args);

	AreaBuilder.Recalculate();
	TerrainBuilder.AnalyzeChokepoints();
	TerrainBuilder.StampContinents();
	
--	for i = 0, (g_iW * g_iH) - 1, 1 do
--		pPlot = Map.GetPlotByIndex(i);
--		print ("i: plotType, terrainType, featureType: " .. tostring(i) .. ": " .. tostring(plotTypes[i]) .. ", " .. tostring(terrainTypes[i]) .. ", " .. tostring(pPlot:GetFeatureType(i)));
--	end

	
	resourcesConfig = MapConfiguration.GetValue("resources");
	local args = {
		resources = resourcesConfig,
	};
	local resGen = ResourceGenerator.Create(args);

	print("Creating start plot database.");
	local startConfig = MapConfiguration.GetValue("start");-- Get the start config
	-- START_MIN_Y and START_MAX_Y is the percent of the map ignored for major civs' starting positions.
	local args = {
		MIN_MAJOR_CIV_FERTILITY = 250,
		MIN_MINOR_CIV_FERTILITY = 25, 
		MIN_BARBARIAN_FERTILITY = 1,
		START_MIN_Y = 15,
		START_MAX_Y = 15,
		START_CONFIG = startConfig,
		WATER = true,
		LAND = false,
	};
	local start_plot_database = AssignStartingPlots.Create(args)

	local GoodyGen = AddGoodies(g_iW, g_iH);
end

-------------------------------------------------------------------------------
function GeneratePlotTypes()
	print("Generating Plot Types");
	local plotTypes = {};

	local sea_level_low = 60;
	local sea_level_normal = 66;
	local sea_level_high = 72;
	local world_age_old = 2;
	local world_age_normal = 3;
	local world_age_new = 5;

	local extra_mountains = 0;
	local grain_amount = 3;
	local adjust_plates = 1.0;
	local shift_plot_types = true;
	local tectonic_islands = true;
	local hills_ridge_flags = g_iFlags;
	local peaks_ridge_flags = g_iFlags;
	local has_center_rift = true;
	local water_percent;

	--	local world_age
	local world_age = MapConfiguration.GetValue("world_age");
	if (world_age == 1) then
		world_age = world_age_new;
	elseif (world_age == 2) then
		world_age = world_age_normal;
	elseif (world_age == 3) then
		world_age = world_age_old;
	else
		world_age = 2 + TerrainBuilder.GetRandomNumber(4, "Random World Age - Lua");
	end

	--	local sea_level
    	local sea_level = MapConfiguration.GetValue("sea_level");
	if sea_level == 1 then -- Low Sea Level
		water_percent = sea_level_low
	elseif sea_level == 2 then -- Normal Sea Level
		water_percent =sea_level_normal
	elseif sea_level == 3 then -- High Sea Level
		water_percent = sea_level_high
	else
		water_percent = TerrainBuilder.GetRandomNumber(sea_level_high - sea_level_low, "Random Sea Level - Lua") + sea_level_low  + 1;
	end

	-- Set values for hills and mountains according to World Age chosen by user.
	local adjustment = world_age;
	if world_age <= world_age_old  then -- 5 Billion Years
		adjust_plates = adjust_plates * 0.75;
	elseif world_age >= world_age_new then -- 3 Billion Years
		adjust_plates = adjust_plates * 1.5;
	else -- 4 Billion Years
	end

	-- Generate continental fractal layer and examine the largest landmass. Reject
	-- the result until the largest landmass occupies 58% or less of the total land.
	local done = false;
	local iAttempts = 0;
	local iWaterThreshold, biggest_area, iNumTotalLandTiles, iNumBiggestAreaTiles, iBiggestID;
	while done == false do
		-- 705: So... the random grain dice normally sucks. For small continents, 3 is much better than 2.
		grain_dice = 3;
		rift_dice = 3;
		-- local grain_dice = TerrainBuilder.GetRandomNumber(7, "Continental Grain roll - LUA Continents");
		-- if grain_dice < 4 then
			-- grain_dice = 2;
		-- else
			-- grain_dice = 1;
		-- end
		-- local rift_dice = TerrainBuilder.GetRandomNumber(3, "Rift Grain roll - LUA Continents");
		-- if rift_dice < 1 then
			-- rift_dice = -1;
		-- end
		
		-- 705: Adding arg to disable polar land (2nd false below)
		-- InitFractal{continent_grain = grain_dice, rift_grain = rift_dice};
		InitFractal{continent_grain = grain_dice, rift_grain = rift_dice, false, false};
		iWaterThreshold = g_continentsFrac:GetHeight(water_percent);

		for x = 0, g_iW - 1 do
			for y = 0, g_iH - 1 do
				local i = y * g_iW + x;
				local val = g_continentsFrac:GetHeight(x, y);
				local pPlot = Map.GetPlotByIndex(i);
				if(val >= iWaterThreshold) then
					plotTypes[i] = g_PLOT_TYPE_LAND;
					TerrainBuilder.SetTerrainType(pPlot, g_TERRAIN_TYPE_DESERT);  -- temporary setting so can calculate areas
				else
					plotTypes[i] = g_PLOT_TYPE_OCEAN;
					TerrainBuilder.SetTerrainType(pPlot, g_TERRAIN_TYPE_OCEAN);  -- temporary setting so can calculate areas
				end
			end
		end
		
		-- 705: This is the fun part!
		-- Inserting water layer from the multilayered fractal.  This works by taking what would be land in the water layer
		-- and turning it into water in the map, effectively subtracting the land.  This will break-up the continents, add
		-- inland seas, all sorts of cool stuff.  The water amount on this layer will be backwards if you want to change the
		-- effect (low water amount will reduce land in the final map substantially).  The region grain is the next most
		-- important setting, higher grain values will result in more, but smaller, cuts in the underlying map so this can
		-- turn continents into small continents or even an island map depending on exactly what you change it to.
		
		local args = {};
		args.iWaterPercent = 70;
		args.iRegionWidth = math.ceil(g_iW);
		args.iRegionHeight = math.ceil(g_iH);
		args.iRegionWestX = math.floor(0);
		args.iRegionSouthY = math.floor(0);
		args.iRegionGrain = 3;
		args.iRegionPlotFlags = g_iFlags;
		args.iRegionFracXExp = 7;
		args.iRegionFracYExp = 6;
		args.iRiftGrain = 1;
		args.bShift = false;
		plotTypes = GenerateWaterLayer(args, plotTypes);
		-- 705: End of the fun part

		ShiftPlotTypes(plotTypes);
		
		AreaBuilder.Recalculate();
		local biggest_ocean = Areas.FindBiggestArea(true);
		
		-- 705: Fill in any inland seas and reduce polar land
		local max = 0;
		local min = 0; 
		max = g_iH - math.ceil(g_iH * 0.2);
		min = math.ceil(g_iH * 0.2);
		iNumTotalLandTiles = 0;
		
		for x = 0, g_iW - 1 do
			for y = 0, g_iH - 1 do
				local i = y * g_iW + x;
				local pPlot = Map.GetPlotByIndex(i);
				local rChance = TerrainBuilder.GetRandomNumber(min, "Polar Land Reduction - LUA Continents");
				local canBeLand = true;
				
				if((y <= min) and (y > 0) and (y < rChance)) then
					canBeLand = false;
				elseif((y > max) and (y < g_iH) and (y > g_iH - rChance)) then
					canBeLand = false;						
				end
				
				if(plotTypes[i] == g_PLOT_TYPE_LAND and not canBeLand) then -- 705: Reduce land at poles
					plotTypes[i] = g_PLOT_TYPE_OCEAN;
					TerrainBuilder.SetTerrainType(pPlot, g_TERRAIN_TYPE_OCEAN);
				elseif(plotTypes[i] == g_PLOT_TYPE_OCEAN and pPlot:GetArea() ~= biggest_ocean) then -- 705: Fill in insland seas
					plotTypes[i] = g_PLOT_TYPE_LAND;
					TerrainBuilder.SetTerrainType(pPlot, g_TERRAIN_TYPE_DESERT);
				end
				-- 705: Count the total land, clean up terrain type mistmatches
				if(plotTypes[i] == g_PLOT_TYPE_LAND) then
					TerrainBuilder.SetTerrainType(pPlot, g_TERRAIN_TYPE_DESERT);
					iNumTotalLandTiles = iNumTotalLandTiles + 1;
				else
					TerrainBuilder.SetTerrainType(pPlot, g_TERRAIN_TYPE_OCEAN);
				end
			end
		end

		AreaBuilder.Recalculate();
		local biggest_area = Areas.FindBiggestArea(false);
		iNumBiggestAreaTiles = biggest_area:GetPlotCount();
		
		-- Now test the biggest landmass to make sure it isn't too big
		if iNumBiggestAreaTiles < iNumTotalLandTiles * 0.33 then
			done = true;
			iBiggestID = biggest_area:GetID();
		end
		iAttempts = iAttempts + 1;
		
		-- Printout for debug use only
		-- print("-"); print("--- Continents landmass generation, Attempt#", iAttempts, "---");
		-- print("- This attempt successful: ", done);
		-- print("- Total Land Plots in world:", iNumTotalLandTiles);
		-- print("- Land Plots belonging to biggest landmass:", iNumBiggestAreaTiles);
		-- print("- Percentage of land belonging to biggest: ", 100 * iNumBiggestAreaTiles / iNumTotalLandTiles);
		-- print("- Continent Grain for this attempt: ", grain_dice);
		-- print("- Rift Grain for this attempt: ", rift_dice);
		-- print("- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -");
		-- print(".");
	end
	
	local args = {};
	args.world_age = world_age;
	args.iW = g_iW;
	args.iH = g_iH;
	args.iFlags = g_iFlags;
	args.blendRidge = 10;
	args.blendFract = 1;
	args.extra_mountains = (5 + ( 3 - world_age)) * 2;
	args.tectonic_islands = tectonic_islands;
	mountainRatio = (22 + ( 3 - world_age)) * 2;
	plotTypes = ApplyTectonics(args, plotTypes);
	plotTypes = AddLonelyMountains(plotTypes, mountainRatio);

	return plotTypes;
end

function InitFractal(args)

	if(args == nil) then args = {}; end

	local continent_grain = args.continent_grain or 2;
	local rift_grain = args.rift_grain or -1; -- Default no rifts. Set grain to between 1 and 3 to add rifts. - Bob
	local invert_heights = args.invert_heights or false;
	local polar = args.polar or true;
	local ridge_flags = args.ridge_flags or g_iFlags;

	local fracFlags = {};
	
	if(invert_heights) then
		fracFlags.FRAC_INVERT_HEIGHTS = true;
	end
	
	if(polar) then
		fracFlags.FRAC_POLAR = true;
	end

	-- 705: Reduce max vertical size and hope that the plot shift function will clean up this mess.
	local g_maxH = math.floor(g_iH * 0.9);

	if(rift_grain > 0 and rift_grain < 4) then
		local riftsFrac = Fractal.Create(g_iW, g_maxH, rift_grain, {}, 6, 5);
		g_continentsFrac = Fractal.CreateRifts(g_iW, g_maxH, continent_grain, fracFlags, riftsFrac, 6, 5);
	else
		g_continentsFrac = Fractal.Create(g_iW, g_maxH, continent_grain, fracFlags, 6, 5);	
	end

	-- Use Brian's tectonics method to weave ridgelines in to the continental fractal.
	-- Without fractal variation, the tectonics come out too regular.
	--
	--[[ "The principle of the RidgeBuilder code is a modified Voronoi diagram. I 
	added some minor randomness and the slope might be a little tricky. It was 
	intended as a 'whole world' modifier to the fractal class. You can modify 
	the number of plates, but that is about it." ]]-- Brian Wade - May 23, 2009
	--
	local MapSizeTypes = {};
	for row in GameInfo.Maps() do
		MapSizeTypes[row.MapSizeType] = row.PlateValue;
	end
	local sizekey = Map.GetMapSize();

	local numPlates = MapSizeTypes[sizekey] or 4
	
	-- 705: Increase plates for better detail on all map sizes
	numPlates = numPlates * 2;

	-- Blend a bit of ridge into the fractal.
	-- This will do things like roughen the coastlines and build inland seas. - Brian

	g_continentsFrac:BuildRidges(numPlates, {}, 1, 2);
end

function AddFeatures()
	print("Cleaning up single tile water plots");
	-- 705: Before we add rivers we need to clean up any lakes next to the coast
	-- 2 passes used, 1st removes land to make lakes near the ocean connect to the
	-- ocean to create bays and other interesting details. The 2nd fills in any
	-- remaining lakes since the river code will also create lakes.

	local plotDataIsCoastal = GenerateCoastalLandDataTable();
	local iW, iH = Map.GetGridSize();

	for x = 0, iW - 1 do
		for y = 0, iH - 1 do
			local i = iW * y + x + 1;
			local plot = Map.GetPlot(x, y);
			if plot:IsLake() then -- Lake found, test for adjacent salt water coastal land...
				-- First, find surrounding plots...
				for direction = 0, DirectionTypes.NUM_DIRECTION_TYPES - 1, 1 do
					local testPlot = Map.GetAdjacentPlot(x, y, direction);
					local testX = testPlot:GetX();
					local testY = testPlot:GetY();
					local testI = iW * testY + testX + 1;
					if plotDataIsCoastal[testI] == true then -- Found coastal land!
						TerrainBuilder.SetTerrainType(testPlot, g_TERRAIN_TYPE_COAST);
					end
				end

			end
		end
	end
	
	AreaBuilder.Recalculate();
	
	for x = 0, iW - 1 do
		for y = 0, iH - 1 do
			local i = iW * y + x + 1;
			local plot = Map.GetPlot(x, y);
			local done = false;
			local iAttempts = 0;
			if plot:IsLake() then -- Lake found, pick a random adjacent land plot for terrain type
				while done == false do
					iAttempts = iAttempts + 1;
					local direction = TerrainBuilder.GetRandomNumber(DirectionTypes.NUM_DIRECTION_TYPES - 1, "Filling in lakes - Lua");
					
					local testPlot = Map.GetAdjacentPlot(x, y, direction);
					local terrainType = testPlot:GetTerrainType();
					if testPlot:IsWater() == false then
						TerrainBuilder.SetTerrainType(plot, terrainType);
						done = true;
					elseif iAttempts > 10 then -- Bad luck, plains is pretty safe?
						TerrainBuilder.SetTerrainType(testPlot, g_TERRAIN_TYPE_PLAINS);
						done = true;
					end
				end
			end
		end
	end
	
	AreaBuilder.Recalculate();

	print("Adding Features");

	-- Get Rainfall setting input by user.
	local rainfall = MapConfiguration.GetValue("rainfall");
	if rainfall == 4 then
		rainfall = 1 + TerrainBuilder.GetRandomNumber(3, "Random Rainfall - Lua");
	end
	
	local args = {rainfall = rainfall}
	
	-- River generation is affected by plot types, originating from highlands and preferring to traverse lowlands.
	-- 705: Custom river method to take rainfall into consideration
	AddRivers();
	
	-- Lakes would interfere with rivers, causing them to stop and not reach the ocean, if placed any sooner.
	local numLargeLakes = GameInfo.Maps[Map.GetMapSize()].Continents;
	-- 705: Adjusted large lakes by rainfall
	numLargeLakes = numLargeLakes + rainfall;
	AddLakes(numLargeLakes);
	
	
	local featuregen = FeatureGenerator.Create(args);

	featuregen:AddFeatures();
end
-------------------------------------------------------------------------------
function GenerateWaterLayer (args, plotTypes)
	-- This function is intended to allow adding seas to specific areas of large continents.
	local args = args or {};
	
	-- Handle args or assign defaults.
	local iWaterPercent = args.iWaterPercent or 55;
	local iRegionWidth = args.iRegionWidth; -- Mandatory Parameter, no default
	local iRegionHeight = args.iRegionHeight; -- Mandatory Parameter, no default
	local iRegionWestX = args.iRegionWestX; -- Mandatory Parameter, no default
	local iRegionSouthY = args.iRegionSouthY; -- Mandatory Parameter, no default
	local iRegionGrain = args.iRegionGrain or 1;
	local iRegionPlotFlags = args.iRegionPlotFlags or g_iFlags;
	local iRegionFracXExp = args.iRegionFracXExp or 6;
	local iRegionFracYExp = args.iRegionFracYExp or 5;
	local iRiftGrain = args.iRiftGrain or -1;
	local bShift = args.bShift or true;

	-- Init the plot types array for this region's plot data. Redone for each new layer.
	-- Compare to self.wholeworldPlotTypes, which contains the sum of all layers.
	plotTypes2 = {};
	-- Loop through the region's plots
	for x = 0, iRegionWidth - 1, 1 do
		for y = 0, iRegionHeight - 1, 1 do
			local i = y * iRegionWidth + x + 1; -- Lua arrays start at 1.
			plotTypes2[i] = g_PLOT_TYPE_OCEAN;
		end
	end

	-- Init the land/water fractal
	local regionContinentsFrac;
	if (iRiftGrain > 0) and (iRiftGrain < 4) then
		local riftsFrac = Fractal.Create(iRegionWidth, iRegionHeight, iRiftGrain, {}, iRegionFracXExp, iRegionFracYExp);
		regionContinentsFrac = Fractal.CreateRifts(iRegionWidth, iRegionHeight, iRegionGrain, iRegionPlotFlags, riftsFrac, iRegionFracXExp, iRegionFracYExp);
	else
		regionContinentsFrac = Fractal.Create(iRegionWidth, iRegionHeight, iRegionGrain, iRegionPlotFlags, iRegionFracXExp, iRegionFracYExp);	
	end
	
	-- Using the fractal matrices we just created, determine fractal-height values for sea level.
	local iWaterThreshold = regionContinentsFrac:GetHeight(iWaterPercent);

	-- Loop through the region's plots
	for x = 0, iRegionWidth - 1, 1 do
		for y = 0, iRegionHeight - 1, 1 do
			local i = y * iRegionWidth + x + 1; -- Lua arrays start at 1.
			local val = regionContinentsFrac:GetHeight(x,y);
			if val <= iWaterThreshold then
				--do nothing
			else
				plotTypes2[i] = g_PLOT_TYPE_LAND;
			end
		end
	end

	if bShift then -- Shift plots to obtain a more natural shape.
		ShiftPlotTypes(plotTypes);
	end

	-- Apply the region's plots to the global plot array.
	for x = 0, iRegionWidth - 1, 1 do
		local wholeworldX = x + iRegionWestX;
		for y = 0, iRegionHeight - 1, 1 do
			local i = y * iRegionWidth + x + 1;
			if plotTypes2[i] ~= g_PLOT_TYPE_OCEAN then
				local wholeworldY = y + iRegionSouthY;
				local index = wholeworldY * g_iW + wholeworldX + 1
				plotTypes[index] = g_PLOT_TYPE_OCEAN;
				local pPlot = Map.GetPlotByIndex(index);
				TerrainBuilder.SetTerrainType(pPlot, g_TERRAIN_TYPE_OCEAN);
			end
		end
	end

	-- This region is done.
	return plotTypes;
end