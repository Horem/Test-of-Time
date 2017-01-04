-- Rainfall: 1 Arid, 2 Standard, 3 Wet, 4 Random
--UPDATE Parameters SET DefaultValue ='3' WHERE Domain ='Rainfall';

-- Resources: 1 Sparse, 2 Standard, 3 Abundant, 4 Random
--UPDATE Parameters SET DefaultValue ='2' WHERE Domain ='Resources';

-- Sea Level: 1 Low, 2 Standard, 3 High, 4 Random
--UPDATE Parameters SET DefaultValue ='2' WHERE Domain ='SeaLevel';

-- World Age: 1 Old, 2 Standard, 3 New, 4 Random
--UPDATE Parameters SET DefaultValue ='3' WHERE Domain ='WorldAge';

-- Temperature: 1 Hot, 2 Standard, 3 Cold, 4 Random
--UPDATE Parameters SET DefaultValue ='2' WHERE Domain ='Temperature';

-- Difficulty:
UPDATE Parameters SET DefaultValue ='DIFFICULTY_KING' WHERE ParameterId ='GameDifficulty' AND Domain ='StandardDifficulties';

-- Game Speed: GAMESPEED_HOREM_NS (Slug), GAMESPEED_HOREM_S (Tortoise), GAMESPEED_HOREM_RS (Sloth), GAMESPEED_HOREM_RSS (Snail)
UPDATE Parameters SET DefaultValue ='GAMESPEED_HOREM_S' WHERE Domain ='StandardGameSpeeds';

-- Prefered Map:	Continents.lua, Fractal.lua, InlandSea.lua, Island_Plates.lua, Pangaea.lua
--					DWArchipelago.lua, DWContinents.lua, DWFractal.lua, DWPangaea.lua, DWSmallContinents.lua
UPDATE Parameters SET DefaultValue ='DWSmallContinents.lua' WHERE Domain ='StandardMaps';

-- Map Size: MAPSIZE_DUEL, MAPSIZE_TINY, MAPSIZE_SMALL, MAPSIZE_STANDARD, MAPSIZE_LARGE, MAPSIZE_HUGE
--UPDATE Parameters SET DefaultValue ='MAPSIZE_SMALL' WHERE Domain ='StandardMapSizes';

-- Start Position: 1 Legendary, 2 Standard, 3 Balanced, 4 Random
--UPDATE Parameters SET DefaultValue ='3' WHERE Domain ='StartPosition';

-- Turn Timer Type: Not sure what values work here
--UPDATE Parameters SET DefaultValue ='TURNLIMIT_NONE' WHERE ParameterId ='TurnTimerType';

-- Turn Phase Type: Not sure what this does atm
--UPDATE Parameters SET DefaultValue ='TURNPHASE_SIMULTANEOUS' WHERE ParameterId ='TurnPhaseType';

-- Turn Limit: Not sure what values work here
--UPDATE Parameters SET DefaultValue ='TURNLIMIT_NONE' WHERE ParameterId ='TurnLimit';

-- No Duplicate Leaders: 0 No, 1 Yes
--UPDATE Parameters SET DefaultValue ='1' WHERE ParameterId ='NoDupeLeaders';

-- No Barbarians: 0 No, 1 Yes
--UPDATE Parameters SET DefaultValue ='0' WHERE ParameterId ='NoBarbarians';

-- No Goodyhuts: 0 No, 1 Yes
--UPDATE Parameters SET DefaultValue ='0' WHERE ParameterId ='NoGoodyHuts';

-- Turn Timer: 180 Default
--UPDATE Parameters SET DefaultValue ='180' WHERE ParameterId ='TurnTimerTime';

-- Max Turns: 500 Default
--UPDATE Parameters SET DefaultValue ='500' WHERE ParameterId ='MaxTurns';


