--[[
    Script Name    : SpawnScripts/DownBelow_Classic/atombrifterhatchling8.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.11 08:01:35
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
	MovementLoopAddLocation(NPC, -181.01, -0.02, -114.52, 2, 4)
	MovementLoopAddLocation(NPC, -181.52, -0.04, -111.08, 2, 0)
	MovementLoopAddLocation(NPC, -183.35, -0.13, -108.74, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -183.35, -0.13, -108.74, 2, 0)
	MovementLoopAddLocation(NPC, -182.04, -0.07, -108.47, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -182.04, -0.07, -108.47, 2, 0)
	MovementLoopAddLocation(NPC, -183.38, -0.13, -108.39, 2, 0)
	MovementLoopAddLocation(NPC, -186.57, -0.1, -106.4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -186.57, -0.1, -106.4, 2, 0)
	MovementLoopAddLocation(NPC, -184.69, -0.11, -106.17, 2, 0)
	MovementLoopAddLocation(NPC, -183.08, -0.08, -107.39, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -183.08, -0.08, -107.39, 2, 0)
	MovementLoopAddLocation(NPC, -184.41, -0.11, -107.23, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -184.41, -0.11, -107.23, 2, 0)
	MovementLoopAddLocation(NPC, -183.79, -0.13, -108.54, 2, 0)
	MovementLoopAddLocation(NPC, -181.79, -0.06, -110.22, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -181.79, -0.06, -110.22, 2, 0)
	MovementLoopAddLocation(NPC, -181.86, 0.11, -112.13, 2, 0)
	MovementLoopAddLocation(NPC, -181.01, -0.02, -114.52, 2, 3)
end

