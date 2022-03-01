--[[
    Script Name    : SpawnScripts/Sprawl/Gloomstalker.lua
    Script Author  : Vo1d
    Script Date    : 2019.10.24 04:10:13
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function hailed_busy(NPC, Spawn)
    AddTimer(NPC, 1000, "delayed_bark", 1, Spawn)
end

function respawn(NPC)
    local MySize = math.random(50, 100)
end

function delayed_bark(NPC, Spawn)
    Say(NPC, "Woof!")
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -13.86, -2.53, 6.39, 2, 0)
	MovementLoopAddLocation(NPC, -6.56, -2.61, -18.45, 2, 0)
	MovementLoopAddLocation(NPC, 18.56, -2.62, -11.45, 2, 0)
	MovementLoopAddLocation(NPC, 38.29, -2.56, -24, 2, 0)
	MovementLoopAddLocation(NPC, 45.46, -2.56, -40.69, 2, 0)
	MovementLoopAddLocation(NPC, 34.06, -2.57, -50.96, 2, 0)
	MovementLoopAddLocation(NPC, 26.94, -2.54, -52.95, 2, 0)
	MovementLoopAddLocation(NPC, -3.56, -2.54, -53.18, 2, 0)
	MovementLoopAddLocation(NPC, -20.26, -2.51, -53.47, 2, 0)
	MovementLoopAddLocation(NPC, -34.2, -4.17, -45.39, 2, 0)
	MovementLoopAddLocation(NPC, -56.45, -4.28, -33.38, 2, 0)
	MovementLoopAddLocation(NPC, -56.39, -4.51, -9.85, 2, 0)
	MovementLoopAddLocation(NPC, -56.43, -2.58, 6.46, 2, 0)
	MovementLoopAddLocation(NPC, -43.92, -2.59, 19.71, 2, 0)
	MovementLoopAddLocation(NPC, -32.13, -2.67, 25.26, 2, 0)
	MovementLoopAddLocation(NPC, -24.33, -2.66, 39.24, 2, 0)
	MovementLoopAddLocation(NPC, -25.51, -2.67, 47.59, 2, 0)
	MovementLoopAddLocation(NPC, -38.75, -2.66, 60.18, 2, 0)
	MovementLoopAddLocation(NPC, -43.5, -2.67, 70.92, 2, 0)
	MovementLoopAddLocation(NPC, -42.58, -2.61, 83.74, 2, 0)
	MovementLoopAddLocation(NPC, -35.23, -2.52, 90.11, 2, 0)
	MovementLoopAddLocation(NPC, -21.14, -2.34, 84.69, 2, 0)
	MovementLoopAddLocation(NPC, -11.67, -1.57, 78.47, 2, 0)
	MovementLoopAddLocation(NPC, -5.78, -2.62, 59.78, 2, 0)
	MovementLoopAddLocation(NPC, -21.3, -2.59, 44.67, 2, 0)
	MovementLoopAddLocation(NPC, -24.08, -2.53, 25.56, 2, 0)
end

