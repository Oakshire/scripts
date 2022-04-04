--[[
    Script Name    : SpawnScripts/DownBelow/aBloodsaberinitiate3017.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.03 09:04:20
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
	MovementLoopAddLocation(NPC, 8.31, -0.01, -146.11, 2, 7)
	MovementLoopAddLocation(NPC, 7.19, 0, -146.09, 2, 5)
	MovementLoopAddLocation(NPC, 4.39, -4, -158.49, 2, 5)
	MovementLoopAddLocation(NPC, 7.63, -1.88, -150.09, 2, 5)
	MovementLoopAddLocation(NPC, 6.64, 0.28, -143.05, 2, 5)
	MovementLoopAddLocation(NPC, 7.34, -4, -159.16, 2, 5)
	MovementLoopAddLocation(NPC, 8.2, -1.89, -150.18, 2, 5)
end
