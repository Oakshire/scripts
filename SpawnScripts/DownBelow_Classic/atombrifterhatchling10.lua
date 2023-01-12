--[[
    Script Name    : SpawnScripts/DownBelow_Classic/atombrifterhatchling10.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.11 08:01:08
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
	MovementLoopAddLocation(NPC, -187.03, -0.09, -107.61, 2, 4)
	MovementLoopAddLocation(NPC, -187.9, -0.12, -105.79, 2, 0)
	MovementLoopAddLocation(NPC, -192.62, -0.03, -106.1, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -192.62, -0.03, -106.1, 2, 0)
	MovementLoopAddLocation(NPC, -193.13, -0.08, -104.51, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -193.13, -0.08, -104.51, 2, 0)
	MovementLoopAddLocation(NPC, -191.9, -0.1, -105.04, 2, 0)
	MovementLoopAddLocation(NPC, -187.63, -0.07, -104.24, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -187.63, -0.07, -104.24, 2, 0)
	MovementLoopAddLocation(NPC, -190.05, -0.13, -105.77, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -190.05, -0.13, -105.77, 2, 0)
	MovementLoopAddLocation(NPC, -190.62, -0.11, -104.81, 2, 0)
	MovementLoopAddLocation(NPC, -192.75, -0.07, -104.94, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -192.75, -0.07, -104.94, 2, 0)
	MovementLoopAddLocation(NPC, -191.01, -0.11, -105.39, 2, 0)
	MovementLoopAddLocation(NPC, -186.96, -0.11, -104.82, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -186.96, -0.11, -104.82, 2, 0)
	MovementLoopAddLocation(NPC, -187.03, -0.09, -107.61, 2, 3)
end
