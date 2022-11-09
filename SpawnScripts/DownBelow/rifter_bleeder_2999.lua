--[[
    Script Name    : SpawnScripts/DownBelow/rifter_bleeder_2999.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.04.01 04:04:47
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
	MovementLoopAddLocation(NPC, -201.28, -0.39, -125.91, 2, 7)
	MovementLoopAddLocation(NPC, -203.31, -0.39, -120.9, 2, 5)
	MovementLoopAddLocation(NPC, -201.72, -0.39, -120.63, 2, 5)
	MovementLoopAddLocation(NPC, -199.73, -0.39, -123.36, 2, 5)
	MovementLoopAddLocation(NPC, -195.34, -0.39, -122.79, 2, 6)
	MovementLoopAddLocation(NPC, -195.79, -0.39, -123.57, 2, 0)
	MovementLoopAddLocation(NPC, -200.01, -0.39, -123.1, 2, 5)
	MovementLoopAddLocation(NPC, -202.66, -0.39, -125.24, 2, 5)
	MovementLoopAddLocation(NPC, -204.36, -0.39, -123.43, 2, 0)
	MovementLoopAddLocation(NPC, -206.89, -0.39, -124.54, 2, 5)
	MovementLoopAddLocation(NPC, -208.51, -0.39, -121.24, 2, 5)
	MovementLoopAddLocation(NPC, -205.78, -0.39, -119.23, 2, 6)
	MovementLoopAddLocation(NPC, -207.79, -0.39, -119.98, 2, 5)
	MovementLoopAddLocation(NPC, -208.3, -0.39, -123.54, 2, 5)
	MovementLoopAddLocation(NPC, -200.73, -0.39, -128.31, 2, 5)
	MovementLoopAddLocation(NPC, -201.52, -0.39, -126.11, 2, 5)
end

