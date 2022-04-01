--[[
    Script Name    : SpawnScripts/DownBelow/rifter_bleeder_2998.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.01 04:04:44
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
	MovementLoopAddLocation(NPC, -202.54, -0.39, -123.68, 2, 6)
	MovementLoopAddLocation(NPC, -199.96, -0.39, -125.42, 2, 5)
	MovementLoopAddLocation(NPC, -205.38, -0.39, -124.89, 2, 0)
	MovementLoopAddLocation(NPC, -204.24, -0.39, -124.54, 2, 5)
	MovementLoopAddLocation(NPC, -201.92, -0.39, -125.29, 2, 0)
	MovementLoopAddLocation(NPC, -197.17, -0.39, -125.29, 2, 5)
	MovementLoopAddLocation(NPC, -203.46, -0.39, -121.09, 2, 6)
	MovementLoopAddLocation(NPC, -202.88, -0.39, -122.74, 2, 5)
	MovementLoopAddLocation(NPC, -206.49, -0.39, -123.53, 2, 5)
	MovementLoopAddLocation(NPC, -198.21, -0.39, -127.4, 2, 6)
end


