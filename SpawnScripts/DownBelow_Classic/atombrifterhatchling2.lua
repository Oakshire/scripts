--[[
    Script Name    : SpawnScripts/DownBelow_Classic/atombrifterhatchling2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.11 08:01:11
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
	MovementLoopAddLocation(NPC, -163.57, -0.08, -120.36, 2, 4)
	MovementLoopAddLocation(NPC, -164.17, -0.08, -118.67, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -164.17, -0.08, -118.67, 2, 0)
	MovementLoopAddLocation(NPC, -160.1, -0.13, -119.79, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -160.1, -0.13, -119.79, 2, 0)
	MovementLoopAddLocation(NPC, -160.47, -0.1, -120.96, 2, 0)
	MovementLoopAddLocation(NPC, -158.21, -0.13, -122.6, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -158.21, -0.13, -122.6, 2, 0)
	MovementLoopAddLocation(NPC, -159.12, -0.13, -121.06, 2, 0)
	MovementLoopAddLocation(NPC, -159.34, -0.11, -117.72, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -159.34, -0.11, -117.72, 2, 0)
	MovementLoopAddLocation(NPC, -160.12, -0.12, -118.67, 2, 0)
	MovementLoopAddLocation(NPC, -163.47, -0.08, -118.6, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -163.47, -0.08, -118.6, 2, 0)
	MovementLoopAddLocation(NPC, -163.57, -0.08, -120.36, 2, 3)
end

