--[[
    Script Name    : SpawnScripts/ScaleYard/Spera.lua
    Script Author  : torsten
    Script Date    : 2022.07.25 12:07:41
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
	MovementLoopAddLocation(NPC, -2.27, -5.17, -1.51, 2, math.random(4,12)) 
	MovementLoopAddLocation(NPC, 3.51, -4.82, 6.22, 2, math.random(4,12)) 
	MovementLoopAddLocation(NPC, 13.28, -4.34, 11.95, 2, math.random(4,12)) 
	MovementLoopAddLocation(NPC, 20.62, -4.38, 17.97, 2, math.random(4,12)) 
	MovementLoopAddLocation(NPC, 18.9, -4.38, 27.26, 2, math.random(4,12)) 
	MovementLoopAddLocation(NPC, 15.33, -4.38, 42.62, 2, math.random(4,12)) 
	MovementLoopAddLocation(NPC, 9.8, -4.38, 62.04, 2, math.random(4,12)) 
	MovementLoopAddLocation(NPC, 11.36, -4.38, 61.18, 2, math.random(4,12)) 
	MovementLoopAddLocation(NPC, 16.74, -4.38, 51.73, 2, math.random(4,12)) 
	MovementLoopAddLocation(NPC, 24.4, -4.38, 54.08, 2, math.random(4,12)) 
	MovementLoopAddLocation(NPC, 13.39, -4.38, 51.39, 2, math.random(4,12)) 
	MovementLoopAddLocation(NPC, 18.94, -4.38, 39.88, 2, math.random(4,12)) 
	MovementLoopAddLocation(NPC, 22.55, -4.38, 31.28, 2, math.random(4,12)) 
	MovementLoopAddLocation(NPC, 24.4, -4.38, 23.61, 2, math.random(4,12)) 
	MovementLoopAddLocation(NPC, 27.07, -2.25, 14.81, 2, math.random(4,12)) 
	MovementLoopAddLocation(NPC, 17.34, -4.38, 11.25, 2, math.random(4,12)) 
	MovementLoopAddLocation(NPC, 8.04, -4.28, 7.84, 2, math.random(4,12)) 
	MovementLoopAddLocation(NPC, 2.52, -4.82, 5.25, 2, math.random(4,12)) 
	MovementLoopAddLocation(NPC, -6.63, -5.55, -10.6, 2, math.random(4,12)) 
	MovementLoopAddLocation(NPC, -5.89, -5.65, -7.47, 2, math.random(4,12)) 
	MovementLoopAddLocation(NPC, -3.51, -5.24, -2.23, 2, math.random(4,12)) 
end