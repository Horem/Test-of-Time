-- ToT Start Script
-- Author: Horemvore
-- DateCreated: 12/12/2016 12:33:31 AM
--------------------------------------------------------------
function Initialize()
	print("Test of Time - Start Script initializing");
	local startTech = GameInfo.Technologies["TECH_Dawn_of_Civilization"];

	local aPlayers = PlayerManager.GetAliveMajors();
	for _, pPlayer in ipairs(aPlayers) do
		-- Give all major civs Dawn of Civilization tech.
		local curPlayerTech = pPlayer:GetTechs();
		if(curPlayerTech ~= nil) then
			if (startTech ~= nil) then
				curPlayerTech:SetResearchProgress(startTech.Index, curPlayerTech:GetResearchCost(startTech.Index));
			end
		end
	end
end
Initialize();
