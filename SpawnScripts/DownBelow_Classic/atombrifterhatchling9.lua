--[[
    Script Name    : SpawnScripts/DownBelow_Classic/atombrifterhatchling9.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.11 08:01:36
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
	MovementLoopAddLocation(NPC, -184.15, -0.07, -105.85, 2, 4)
	MovementLoopAddLocation(NPC, -189.35, -0.13, -105.22, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -189.35, -0.13, -105.22, 2, 0)
	MovementLoopAddLocation(NPC, -187.09, -0.11, -105.18, 2, 0)
	MovementLoopAddLocation(NPC, -183.63, -0.11, -107.37, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -183.63, -0.11, -107.37, 2, 0)
	MovementLoopAddLocation(NPC, -185.42, -0.09, -106.12, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -185.42, -0.09, -106.12, 2, 0)
	MovementLoopAddLocation(NPC, -186.2, -0.09, -104.51, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -186.2, -0.09, -104.51, 2, 0)
	MovementLoopAddLocation(NPC, -186.29, -0.1, -106.53, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -186.29, -0.1, -106.53, 2, 0)
	MovementLoopAddLocation(NPC, -184.08, -0.12, -107.39, 2, 0)
	MovementLoopAddLocation(NPC, -184.15, -0.07, -105.85, 2, 3)
end

