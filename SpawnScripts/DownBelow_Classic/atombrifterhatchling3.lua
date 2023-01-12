--[[
    Script Name    : SpawnScripts/DownBelow_Classic/atombrifterhatchling3.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.11 08:01:27
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
	MovementLoopAddLocation(NPC, -163.99, -0.08, -117.58, 2, 4)
	MovementLoopAddLocation(NPC, -164.45, -0.08, -118.49, 2, 0)
	MovementLoopAddLocation(NPC, -168.17, -0.03, -119.03, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -168.17, -0.03, -119.03, 2, 0)
	MovementLoopAddLocation(NPC, -161.99, -0.04, -119.25, 2, 0)
	MovementLoopAddLocation(NPC, -158.62, -0.11, -117.97, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -158.62, -0.11, -117.97, 2, 0)
	MovementLoopAddLocation(NPC, -157.25, -0.05, -116.02, 2, 0)
	MovementLoopAddLocation(NPC, -157.29, -0.06, -114.47, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -157.29, -0.06, -114.47, 2, 0)
	MovementLoopAddLocation(NPC, -156.25, -0.02, -117.26, 2, 0)
	MovementLoopAddLocation(NPC, -156.64, -0.09, -120.72, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -156.64, -0.09, -120.72, 2, 0)
	MovementLoopAddLocation(NPC, -158.57, -0.12, -119.34, 2, 0)
	MovementLoopAddLocation(NPC, -166.29, 0.11, -118.75, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -166.29, 0.11, -118.75, 2, 0)
	MovementLoopAddLocation(NPC, -165.18, -0.08, -118.81, 2, 0)
	MovementLoopAddLocation(NPC, -163.99, -0.08, -117.58, 2, 3)
end

