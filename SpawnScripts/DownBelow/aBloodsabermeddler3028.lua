--[[
    Script Name    : SpawnScripts/DownBelow/aBloodsabermeddler3028.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.03 11:04:22
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
	MovementLoopAddLocation(NPC, 5.36, -4, -160.11, 2, 7)
	MovementLoopAddLocation(NPC, 6.59, -1.91, -150.16, 2, 5)
	MovementLoopAddLocation(NPC, 8.46, 0, -144.2, 2, 5)
	MovementLoopAddLocation(NPC, 7.44, -4, -156.23, 2, 5)
	MovementLoopAddLocation(NPC, 6.57, 0, -146.08, 2, 5)
	MovementLoopAddLocation(NPC, 8.77, 0, -144.39, 2, 5)
	MovementLoopAddLocation(NPC, 5.01, -4, -159.9, 2, 5)
	MovementLoopAddLocation(NPC, 8.4, -1.37, -149.16, 2, 5)
end


