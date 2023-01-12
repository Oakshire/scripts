--[[
    Script Name    : SpawnScripts/DownBelow_Classic/atombrifterhatchling1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.11 08:01:52
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
	MovementLoopAddLocation(NPC, -160.33, -0.05, -113.41, 2, 4)
	MovementLoopAddLocation(NPC, -157.68, -0.09, -117.17, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -157.68, -0.09, -117.17, 2, 0)
	MovementLoopAddLocation(NPC, -158.97, -0.12, -118.58, 2, 0)
	MovementLoopAddLocation(NPC, -162.79, -0.08, -119.15, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -162.79, -0.08, -119.15, 2, 0)
	MovementLoopAddLocation(NPC, -163.5, -0.08, -119.87, 2, 0)
	MovementLoopAddLocation(NPC, -160.43, -0.11, -121.5, 2, 0)
	MovementLoopAddLocation(NPC, -160, -0.04, -123.96, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -160, -0.04, -123.96, 2, 0)
	MovementLoopAddLocation(NPC, -160.53, -0.1, -122.49, 2, 0)
	MovementLoopAddLocation(NPC, -157.08, -0.08, -118.1, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -157.08, -0.08, -118.1, 2, 0)
	MovementLoopAddLocation(NPC, -157.77, -0.09, -116.95, 2, 0)
	MovementLoopAddLocation(NPC, -158.47, -0.07, -112.41, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -158.47, -0.07, -112.41, 2, 0)
	MovementLoopAddLocation(NPC, -160.33, -0.05, -113.41, 2, 3)
end

