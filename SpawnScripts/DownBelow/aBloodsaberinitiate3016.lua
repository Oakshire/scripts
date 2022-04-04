--[[
    Script Name    : SpawnScripts/DownBelow/aBloodsaberinitiate3016.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.03 09:04:01
    Script Purpose : 
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
	MovementLoopAddLocation(NPC, 5.94, -4, -159.92, 2, 5)
	MovementLoopAddLocation(NPC, 6.57, -3.45, -153.27, 2, 5)
	MovementLoopAddLocation(NPC, 6.47, -4, -156.08, 2, 5)
	MovementLoopAddLocation(NPC, 5.35, 0.01, -143.23, 2, 5)
	MovementLoopAddLocation(NPC, 7.68, -1.39, -149.13, 2, 5)
	MovementLoopAddLocation(NPC, 5.23, 0.3, -142.3, 2, 5)
	MovementLoopAddLocation(NPC, 6.59, -4, -160.1, 2, 5)
	MovementLoopAddLocation(NPC, 6.41, -3.4, -153.15, 2, 5)
end


