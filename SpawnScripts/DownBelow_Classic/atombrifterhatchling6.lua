--[[
    Script Name    : SpawnScripts/DownBelow_Classic/atombrifterhatchling6.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.11 08:01:43
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
	MovementLoopAddLocation(NPC, -157.45, -0.06, -116.16, 2, 4)
	MovementLoopAddLocation(NPC, -156.83, -0.07, -113.25, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -156.83, -0.07, -113.25, 2, 0)
	MovementLoopAddLocation(NPC, -156.23, -0.01, -115.29, 2, 0)
	MovementLoopAddLocation(NPC, -156.69, -0.04, -117.26, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -156.69, -0.04, -117.26, 2, 0)
	MovementLoopAddLocation(NPC, -158.91, -0.11, -117.69, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -158.91, -0.11, -117.69, 2, 0)
	MovementLoopAddLocation(NPC, -157.37, -0.1, -119.35, 2, 0)
	MovementLoopAddLocation(NPC, -156.77, -0.1, -122.01, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -156.77, -0.1, -122.01, 2, 0)
	MovementLoopAddLocation(NPC, -157.4, -0.12, -123.82, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -157.4, -0.12, -123.82, 2, 0)
	MovementLoopAddLocation(NPC, -157.18, -0.11, -122.5, 2, 0)
	MovementLoopAddLocation(NPC, -159.18, -0.12, -119.35, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -159.18, -0.12, -119.35, 2, 0)
	MovementLoopAddLocation(NPC, -158.97, -0.06, -113.93, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -158.97, -0.06, -113.93, 2, 0)
	MovementLoopAddLocation(NPC, -157.86, -0.08, -114.45, 2, 0)
	MovementLoopAddLocation(NPC, -157.45, -0.06, -116.16, 2, 3)
end

