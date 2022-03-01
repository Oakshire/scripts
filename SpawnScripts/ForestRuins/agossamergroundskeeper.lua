--[[
    Script Name    : SpawnScripts/ForestRuins/agossamergroundskeeper.lua
    Script Author  : Dorbin
    Script Date    : 2022.02.26 11:02:09
    Script Purpose : Grounds keeper pathing in Forest Ruins
                   : 
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
    if GetSpawnLocationID(NPC)==424758 then
	MovementLoopAddLocation(NPC, 1054.41, -10.25, -674.03, 2, 0)
	MovementLoopAddLocation(NPC, 1062.13, -10.25, -692.43, 2, 0)
	MovementLoopAddLocation(NPC, 1059.32, -10.25, -704.01, 2, 0)
	MovementLoopAddLocation(NPC, 1054.11, -10.25, -710.41, 2, 0)
	MovementLoopAddLocation(NPC, 1038.42, -10.32, -706.81, 2, 5)
	MovementLoopAddLocation(NPC, 1031.17, -10.25, -702.45, 2, 0)
	MovementLoopAddLocation(NPC, 1026.93, -10.25, -692.83, 2, 0)
	MovementLoopAddLocation(NPC, 1060.11, -10.25, -673.05, 2, 5)
	MovementLoopAddLocation(NPC, 1083.37, -10.25, -661.99, 2, 0)
	
	else if GetSpawnLocationID(NPC)==424748 then
	    MovementLoopAddLocation(NPC, 1022.49, -10.25, -688.72, 2, 0)
	MovementLoopAddLocation(NPC, 1011.3, -19, -664.87, 2, 0)
	MovementLoopAddLocation(NPC, 1010.45, -19, -660.17, 2, 0)
	MovementLoopAddLocation(NPC, 1018.87, -19.01, -651.51, 2, 0)
	MovementLoopAddLocation(NPC, 1028.21, -19, -653.71, 2, 0)
	MovementLoopAddLocation(NPC, 1030.3, -19, -661.95, 2, 0)
	MovementLoopAddLocation(NPC, 1027.52, -18.99, -652.75, 2, 0)
	MovementLoopAddLocation(NPC, 1029.21, -19.01, -646.1, 2, 5)
	MovementLoopAddLocation(NPC, 1042.8, -19.01, -640.33, 2, 0)
	MovementLoopAddLocation(NPC, 1052.54, -19.01, -645.16, 2, 5)
	MovementLoopAddLocation(NPC, 1043.5, -19.01, -649.4, 2, 0)
	MovementLoopAddLocation(NPC, 1052.15, -12.3, -665.86, 2, 0)
	MovementLoopAddLocation(NPC, 1056.82, -10.25, -677.94, 2, 0)
	MovementLoopAddLocation(NPC, 1026.39, -10.25, -693.81, 2, 5)
	    
end

end
end

