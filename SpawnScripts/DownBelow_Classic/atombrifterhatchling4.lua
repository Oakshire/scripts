--[[
    Script Name    : SpawnScripts/DownBelow_Classic/atombrifterhatchling4.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.11 08:01:47
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
	MovementLoopAddLocation(NPC, -157.88, -0.11, -119.71, 2, 4)
	MovementLoopAddLocation(NPC, -157.07, -0.11, -121.81, 2, 0)
	MovementLoopAddLocation(NPC, -157.75, -0.12, -124.72, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -157.75, -0.12, -124.72, 2, 0)
	MovementLoopAddLocation(NPC, -159.27, -0.04, -125.1, 2, 0)
	MovementLoopAddLocation(NPC, -159.76, -0.08, -126.82, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -159.76, -0.08, -126.82, 2, 0)
	MovementLoopAddLocation(NPC, -158.39, -0.09, -124.58, 2, 0)
	MovementLoopAddLocation(NPC, -158.02, -0.12, -122.23, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -158.02, -0.12, -122.23, 2, 0)
	MovementLoopAddLocation(NPC, -158.94, -0.12, -119.78, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -158.94, -0.12, -119.78, 2, 0)
	MovementLoopAddLocation(NPC, -157.34, -0.09, -118.35, 2, 0)
	MovementLoopAddLocation(NPC, -156.98, -0.06, -117.28, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -156.98, -0.06, -117.28, 2, 0)
	MovementLoopAddLocation(NPC, -156.27, -0.06, -119.42, 2, 0)
	MovementLoopAddLocation(NPC, -156.71, -0.1, -122.38, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -156.71, -0.1, -122.38, 2, 0)
	MovementLoopAddLocation(NPC, -157.47, -0.11, -121.7, 2, 0)
	MovementLoopAddLocation(NPC, -157.88, -0.11, -119.71, 2, 3)
end

