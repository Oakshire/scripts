--[[
    Script Name    : SpawnScripts/Blackburrow/aridgerat.lua
    Script Author  : Dorbin
    Script Date    : 2022.07.09 08:07:13
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
    if GetSpawnLocationID(NPC)== 133771503 then
	MovementLoopAddLocation(NPC, 66.81, -0.63, 13.19, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 57.75, -1.07, 11.67, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 64.02, -0.99, 11.12, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 58.34, -1.08, 8.62, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 72.32, -1.24, 18.18, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 75.19, -1.79, 18.58, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 75.64, -2.14, 21.07, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 69.29, -0.52, 14.21, 2, math.random(8,20))
    elseif GetSpawnLocationID(NPC)== 413404 then
    MovementLoopAddLocation(NPC, 57.69, -1.06, 8.91, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 57.69, -1.06, 8.91, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 51.63, 0.42, 9.06, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 61.76, -1.03, 12.87, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 58.85, -1.1, 8.95, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 50.88, 0.52, 5.79, 2, math.random(8,20))
elseif GetSpawnLocationID(NPC)== 133771504 then
    MovementLoopAddLocation(NPC, 47.91, 0.91, 7.45, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 43.85, 1.45, 6.14, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 49.44, 0.75, 5.55, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 44.22, 1.46, 9.42, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 48.2, 0.97, 9.2, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 50.37, 0.59, 8.77, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 42.41, 1.47, 6.64, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 48.14, 0.98, 9.22, 2, math.random(8,20))
elseif GetSpawnLocationID(NPC)== 413398 then
    MovementLoopAddLocation(NPC, 41.01, -1.51, -52.57, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 42.57, -1.8, -56.5, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 46.78, -2.78, -56.35, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 51.66, -3.11, -56.06, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 47.24, -2.83, -56.25, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 42.48, -1.78, -56.37, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 41.11, -1.57, -53.32, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 44.68, -2.05, -54.98, 2, math.random(8,20))
elseif GetSpawnLocationID(NPC)== 413386 then
	MovementLoopAddLocation(NPC, 30.1, 1.33, -38.27, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 30.33, 0.62, -42.32, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 32.81, 0.94, -39.64, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 33.44, 0.67, -41.37, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 36.9, -0.93, -48.83, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 35.93, -0.14, -44, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 30.18, 0.75, -41.58, 2, math.random(8,20))
	MovementLoopAddLocation(NPC, 32.6, 1.32, -35.69, 2, math.random(8,20))
end
end

