--[[
    Script Name    : SpawnScripts/ScaleYard/Igor.lua
    Script Author  : torsten
    Script Date    : 2022.07.25 11:07:07
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
	MovementLoopAddLocation(NPC, 84.89, -4.37, 14.49, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 81.65, -4.37, 11.98, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 73.01, -4.37, 11.11, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 74.75, -4.37, 13.94, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 86.32, -4.37, 16.33, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 93.87, -4.37, 16.42, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 95.48, -4.37, 18.33, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 93.03, -4.37, 20.01, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 91.23, -4.37, 19.55, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 86.68, -4.37, 17.18, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 82.71, -4.37, 15.17, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 73.99, -4.37, 14.29, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 73.19, -4.37, 13.04, 2, math.random(4,12))  
	MovementLoopAddLocation(NPC, 84.98, -4.37, 13.54, 2, math.random(4,12))  
end