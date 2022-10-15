--[[
    Script Name    : SpawnScripts/Classic_forest/agossamergroundskeeper.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.14 12:10:49
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	waypoints(NPC)
    Appearance(NPC)
end

function Appearance(NPC)
if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",2851)
end
end



function respawn(NPC)
end

function waypoints(NPC)
    if GetSpawnLocationID(NPC)==133778178 then
	MovementLoopAddLocation(NPC, 1054.41, -10.25, -674.03, 2, 0)
	MovementLoopAddLocation(NPC, 1062.13, -10.25, -692.43, 2, 0)
	MovementLoopAddLocation(NPC, 1059.32, -10.25, -704.01, 2, 0)
	MovementLoopAddLocation(NPC, 1054.11, -10.25, -710.41, 2, 0)
	MovementLoopAddLocation(NPC, 1038.42, -10.32, -706.81, 2, math.random(4,9))
	MovementLoopAddLocation(NPC, 1031.17, -10.25, -702.45, 2, 0)
	MovementLoopAddLocation(NPC, 1026.93, -10.25, -692.83, 2, 0)
	MovementLoopAddLocation(NPC, 1060.11, -10.25, -673.05, 2, 0)
	MovementLoopAddLocation(NPC, 1083.37, -10.25, -661.99, 2, math.random(4,12))
	MovementLoopAddLocation(NPC, 1060.11, -10.25, -673.05, 2, 0)
	MovementLoopAddLocation(NPC, 1026.93, -10.25, -692.83, 2, 0)
	MovementLoopAddLocation(NPC, 1031.17, -10.25, -702.45, 2, 0)
	MovementLoopAddLocation(NPC, 1038.42, -10.32, -706.81, 2, math.random(4,9))
	MovementLoopAddLocation(NPC, 1054.11, -10.25, -710.41, 2, 0)
	MovementLoopAddLocation(NPC, 1059.32, -10.25, -704.01, 2, 0)
	MovementLoopAddLocation(NPC, 1062.13, -10.25, -692.43, 2, 0)
	MovementLoopAddLocation(NPC, 1054.41, -10.25, -674.03, 2, 0)
	
	else if GetSpawnLocationID(NPC)==133778179 then
	    MovementLoopAddLocation(NPC, 1022.49, -10.25, -688.72, 2, 0)
	MovementLoopAddLocation(NPC, 1011.3, -19, -664.87, 2, 0)
	MovementLoopAddLocation(NPC, 1010.45, -19, -660.17, 2, 0)
	MovementLoopAddLocation(NPC, 1018.87, -19.01, -651.51, 2, 0)
	MovementLoopAddLocation(NPC, 1028.21, -19, -653.71, 2, 0)
	MovementLoopAddLocation(NPC, 1030.3, -19, -661.95, 2, math.random(4,9))
	MovementLoopAddLocation(NPC, 1030.3, -19, -661.95, 2, 0)
	MovementLoopAddLocation(NPC, 1027.52, -18.99, -652.75, 2, 0)
	MovementLoopAddLocation(NPC, 1029.21, -19.01, -646.1, 2, 0)
	MovementLoopAddLocation(NPC, 1042.8, -19.01, -640.33, 2, 0)
	MovementLoopAddLocation(NPC, 1052.54, -19.01, -645.16, 2, math.random(4,9))
	MovementLoopAddLocation(NPC, 1043.5, -19.01, -649.4, 2, 0)
	MovementLoopAddLocation(NPC, 1052.15, -12.3, -665.86, 2, 0)
	MovementLoopAddLocation(NPC, 1056.82, -10.25, -677.94, 2, 0)
	MovementLoopAddLocation(NPC, 1026.39, -10.25, -693.81, 2, math.random(4,9))

	MovementLoopAddLocation(NPC, 1026.39, -10.25, -693.81, 2, 0)
	MovementLoopAddLocation(NPC, 1056.82, -10.25, -677.94, 2, 0)
	MovementLoopAddLocation(NPC, 1052.15, -12.3, -665.86, 2, 0)
	MovementLoopAddLocation(NPC, 1043.5, -19.01, -649.4, 2, 0)
	MovementLoopAddLocation(NPC, 1052.54, -19.01, -645.16, 2, math.random(4,9))
	MovementLoopAddLocation(NPC, 1042.8, -19.01, -640.33, 2, 0)
	MovementLoopAddLocation(NPC, 1029.21, -19.01, -646.1, 2, 0)
	MovementLoopAddLocation(NPC, 1027.52, -18.99, -652.75, 2, 0)
	MovementLoopAddLocation(NPC, 1030.3, -19, -661.95, 2, 0)
	MovementLoopAddLocation(NPC, 1030.3, -19, -661.95, 2, math.random(4,9))
	MovementLoopAddLocation(NPC, 1028.21, -19, -653.71, 2, 0)
	MovementLoopAddLocation(NPC, 1018.87, -19.01, -651.51, 2, 0)
	MovementLoopAddLocation(NPC, 1010.45, -19, -660.17, 2, 0)
	MovementLoopAddLocation(NPC, 1011.3, -19, -664.87, 2, 0)
	MovementLoopAddLocation(NPC, 1022.49, -10.25, -688.72, 2, math.random(4,9))	    
end

end
end

