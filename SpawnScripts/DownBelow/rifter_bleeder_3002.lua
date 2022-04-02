--[[
    Script Name    : SpawnScripts/DownBelow/rifter_bleeder_3002.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.02 03:04:36
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
	MovementLoopAddLocation(NPC, -203.75, -0.39, -125.22, 2, 8)
	MovementLoopAddLocation(NPC, -197.18, -0.39, -127.02, 2, 5)
	MovementLoopAddLocation(NPC, -202.4, -0.39, -122.08, 2, 0)
	MovementLoopAddLocation(NPC, -202.95, -0.39, -119.48, 2, 0)
	MovementLoopAddLocation(NPC, -207.39, -0.39, -119.37, 2, 5)
	MovementLoopAddLocation(NPC, -203.8, -0.39, -118.52, 2, 0)
	MovementLoopAddLocation(NPC, -202.16, -0.39, -123.36, 2, 0)
	MovementLoopAddLocation(NPC, -196.49, -0.39, -125.36, 2, 5)
	MovementLoopAddLocation(NPC, -204.61, -0.39, -122.92, 2, 7)
	MovementLoopAddLocation(NPC, -206.5, -0.39, -125.98, 2, 5)
	MovementLoopAddLocation(NPC, -199.31, -0.39, -126.88, 2, 5)
	MovementLoopAddLocation(NPC, -204.18, -0.39, -124.99, 2, 7)
end
