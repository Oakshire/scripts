--[[
    Script Name    : SpawnScripts/Blackburrow/aburlySabertoothPath1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.02 08:05:34
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
	MovementLoopAddLocation(NPC, -21.01, -11.72, -23.41, 2, 0)
	MovementLoopAddLocation(NPC, -21.01, -11.72, -23.41, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -14.3, -11.29, -15.52, 2, 0)
	MovementLoopAddLocation(NPC, -14.3, -11.29, -15.52, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -10.43, -12, -15.91, 2, 0)
	MovementLoopAddLocation(NPC, -6.77, -12.24, -16.97, 2, 0)
	MovementLoopAddLocation(NPC, -6.77, -12.24, -16.97, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -5.93, -12.04, -6.18, 2, 0)
	MovementLoopAddLocation(NPC, -9.28, -12.2, -9.14, 2, 0)
	MovementLoopAddLocation(NPC, -10.33, -12.2, -11.55, 2, 0)
	MovementLoopAddLocation(NPC, -11.06, -12.2, -10.54, 2, 0)
	MovementLoopAddLocation(NPC, -11.06, -12.2, -10.54, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -19.13, -12.33, -17.48, 2, 0)
	MovementLoopAddLocation(NPC, -19.13, -12.33, -17.48, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -19.04, -12.01, -25.74, 2, 0)
	MovementLoopAddLocation(NPC, -19.04, -12.01, -25.74, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -18.2, -11.77, -28.96, 2, 0)
	MovementLoopAddLocation(NPC, -18.2, -11.77, -28.96, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -15.64, -11.65, -27.79, 2, 0)
	MovementLoopAddLocation(NPC, -8.73, -12.2, -16.41, 2, 0)
	MovementLoopAddLocation(NPC, -8.73, -12.2, -16.41, 2, math.random(5,10))
end

