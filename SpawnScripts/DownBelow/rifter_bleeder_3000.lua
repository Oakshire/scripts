--[[
    Script Name    : SpawnScripts/DownBelow/rifter_bleeder_3000.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.01 04:04:36
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
    spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -203.4, -0.39, -125.58, 2, 8)
	MovementLoopAddLocation(NPC, -202.07, -0.39, -130.37, 2, 5)
	MovementLoopAddLocation(NPC, -201.91, -0.39, -127.54, 2, 5)
	MovementLoopAddLocation(NPC, -207.28, -0.39, -123.28, 2, 5)
	MovementLoopAddLocation(NPC, -206.22, -0.39, -118.91, 2, 6)
	MovementLoopAddLocation(NPC, -203.12, -0.39, -121.07, 2, 5)
	MovementLoopAddLocation(NPC, -197.69, -0.39, -125.42, 2, 5)
	MovementLoopAddLocation(NPC, -205.25, -0.39, -123.32, 2, 0)
	MovementLoopAddLocation(NPC, -205.39, -0.39, -124.54, 2, 5)
	MovementLoopAddLocation(NPC, -202.91, -0.39, -126.43, 2, 5)
	MovementLoopAddLocation(NPC, -200.87, -0.39, -130.3, 2, 6)
	MovementLoopAddLocation(NPC, -201.58, -0.39, -123.28, 2, 5)
end


