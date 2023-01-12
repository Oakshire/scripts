--[[
    Script Name    : SpawnScripts/DownBelow_Classic/atombrifterhatchling7.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.11 08:01:19
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
	MovementLoopAddLocation(NPC, -180.28, -0.01, -109.77, 2, 4)
	MovementLoopAddLocation(NPC, -182.84, -0.05, -106.41, 2, 0)
	MovementLoopAddLocation(NPC, -184.72, -0.08, -104.96, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -184.72, -0.08, -104.96, 2, 0)
	MovementLoopAddLocation(NPC, -185.96, -0.09, -105.9, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -185.96, -0.09, -105.9, 2, 0)
	MovementLoopAddLocation(NPC, -184.39, -0.11, -106.5, 2, 0)
	MovementLoopAddLocation(NPC, -184.13, -0.12, -108.86, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -184.13, -0.12, -108.86, 2, 0)
	MovementLoopAddLocation(NPC, -182.39, -0.1, -110.09, 2, 0)
	MovementLoopAddLocation(NPC, -181.81, -0.03, -114.01, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -181.81, -0.03, -114.01, 2, 0)
	MovementLoopAddLocation(NPC, -181.67, -0.04, -111.03, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -181.67, -0.04, -111.03, 2, 0)
	MovementLoopAddLocation(NPC, -183.49, -0.13, -109.15, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -183.49, -0.13, -109.15, 2, 0)
	MovementLoopAddLocation(NPC, -184, -0.1, -106.66, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -184, -0.1, -106.66, 2, 0)
	MovementLoopAddLocation(NPC, -181.8, -0.03, -107.53, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -181.8, -0.03, -107.53, 2, 0)
	MovementLoopAddLocation(NPC, -181.85, -0.1, -109.2, 2, 0)
	MovementLoopAddLocation(NPC, -180.28, -0.01, -109.77, 2, 3)
end

