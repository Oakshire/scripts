--[[
    Script Name    : SpawnScripts/DownBelow_Classic/atombrifterhatchling5.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.11 08:01:07
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
	MovementLoopAddLocation(NPC, -159.97, -0.02, -124.13, 2, 4)
	MovementLoopAddLocation(NPC, -158.88, -0.04, -125.24, 2, 0)
	MovementLoopAddLocation(NPC, -158.67, -0.07, -126.55, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -158.67, -0.07, -126.55, 2, 0)
	MovementLoopAddLocation(NPC, -158.68, -0.14, -123.41, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -158.68, -0.14, -123.41, 2, 0)
	MovementLoopAddLocation(NPC, -160.11, -0.13, -121.41, 2, 0)
	MovementLoopAddLocation(NPC, -158.46, -0.11, -118.21, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -158.46, -0.11, -118.21, 2, 0)
	MovementLoopAddLocation(NPC, -160.03, -0.13, -119.84, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -160.03, -0.13, -119.84, 2, 0)
	MovementLoopAddLocation(NPC, -159.05, -0.11, -117.81, 2, 0)
	MovementLoopAddLocation(NPC, -158.55, -0.07, -112.45, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -158.55, -0.07, -112.45, 2, 0)
	MovementLoopAddLocation(NPC, -159.49, -0.05, -113.55, 2, 0)
	MovementLoopAddLocation(NPC, -158.56, -0.09, -115.49, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -158.56, -0.09, -115.49, 2, 0)
	MovementLoopAddLocation(NPC, -159.16, -0.1, -116.45, 2, 0)
	MovementLoopAddLocation(NPC, -158.49, -0.12, -120.69, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -158.49, -0.12, -120.69, 2, 0)
	MovementLoopAddLocation(NPC, -156.72, -0.11, -124.53, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -156.72, -0.11, -124.53, 2, 0)
	MovementLoopAddLocation(NPC, -157.56, -0.12, -123.79, 2, 0)
	MovementLoopAddLocation(NPC, -159.97, -0.02, -124.13, 2, 3)
end

