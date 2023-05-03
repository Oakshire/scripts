--[[
    Script Name    : SpawnScripts/Blackburrow/aburlySabertoothPath2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.02 08:05:32
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -4.16, -12.15, -8.11, 2, 0)
	MovementLoopAddLocation(NPC, -4.16, -12.15, -8.11, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -3.73, -12.21, -11.39, 2, 0)
	MovementLoopAddLocation(NPC, -7.97, -12.28, -16.29, 2, 0)
	MovementLoopAddLocation(NPC, -7.97, -12.28, -16.29, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -14.94, -11.63, -25.76, 2, 0)
	MovementLoopAddLocation(NPC, -14.94, -11.63, -25.76, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -11.69, -12.09, -20.11, 2, 0)
	MovementLoopAddLocation(NPC, -11.69, -12.09, -20.11, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -18.4, -11.83, -28.76, 2, 0)
	MovementLoopAddLocation(NPC, -18.4, -11.83, -28.76, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -15.48, -11.58, -28.07, 2, 0)
	MovementLoopAddLocation(NPC, -12.38, -11.9, -23.18, 2, 0)
	MovementLoopAddLocation(NPC, -10.52, -11.8, -22.38, 2, 0)
	MovementLoopAddLocation(NPC, -9.44, -11.85, -20.57, 2, 0)
	MovementLoopAddLocation(NPC, -9.44, -11.85, -20.57, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -11.7, -12.08, -20.57, 2, 0)
	MovementLoopAddLocation(NPC, -6.01, -12.17, -12.07, 2, 0)
end

