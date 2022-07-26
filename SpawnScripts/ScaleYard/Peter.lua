--[[
    Script Name    : SpawnScripts/ScaleYard/Peter.lua
    Script Author  : torsten
    Script Date    : 2022.07.25 12:07:48
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
	MovementLoopAddLocation(NPC, 76.25, -4.37, 10.68, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 79.53, -4.37, 5.25, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 83.45, -4.37, 8.12, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 88.14, -4.37, 17.4, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 92.18, -4.37, 20.36, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 96.4, -4.37, 18.94, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 91.97, -4.37, 16.03, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 83.45, -4.37, 20.74, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 81.69, -4.37, 12.93, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 77.57, -4.37, 6.62, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 69.84, -2.25, 4.53, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 77.58, -4.37, 6.61, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 80.22, -4.37, 13.67, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 72.09, -4.37, 14.2, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 94.6, -4.37, 17.22, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 79.11, -4.37, 11.37, 2, math.random(4,12))  
end