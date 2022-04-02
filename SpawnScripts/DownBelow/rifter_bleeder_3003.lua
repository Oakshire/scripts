--[[
    Script Name    : SpawnScripts/DownBelow/rifter_bleeder_3003.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.02 03:04:46
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
	MovementLoopAddLocation(NPC, -205.69, -0.39, -125.29, 2, 10)
	MovementLoopAddLocation(NPC, -202.33, -0.39, -127.55, 2, 5)
	MovementLoopAddLocation(NPC, -207.81, -0.39, -123.52, 2, 6)
	MovementLoopAddLocation(NPC, -206.53, -0.39, -119.19, 2, 5)
	MovementLoopAddLocation(NPC, -207.35, -0.39, -126.25, 2, 0)
	MovementLoopAddLocation(NPC, -207.02, -0.39, -130.65, 2, 5)
	MovementLoopAddLocation(NPC, -202.98, -0.39, -131.17, 2, 6)
	MovementLoopAddLocation(NPC, -203.99, -0.39, -123.78, 2, 5)
	MovementLoopAddLocation(NPC, -196.48, -0.39, -124.01, 2, 8)
	MovementLoopAddLocation(NPC, -204.88, -0.39, -125.41, 2, 5)
end


