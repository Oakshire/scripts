--[[
    Script Name    : SpawnScripts/Caves/aRockpawguardPatrol.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.06 04:10:41
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGnoll1.lua")

function spawn(NPC)

waypoints(NPC)
end


function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 55.81, 37.86, -107.67, 2, 0)
	MovementLoopAddLocation(NPC, 55.8, 37.87, -97.44, 2, 0)
	MovementLoopAddLocation(NPC, 52.8, 37.78, -92.05, 2, 0)
	MovementLoopAddLocation(NPC, 51.36, 37.88, -84.49, 2, 0)
	MovementLoopAddLocation(NPC, 42.66, 37.88, -75.44, 2, 0)
	MovementLoopAddLocation(NPC, 41.84, 37.87, -72.19, 2, 0)
	MovementLoopAddLocation(NPC, 43.54, 37.88, -69.15, 2, 0)
	MovementLoopAddLocation(NPC, 47.15, 37.88, -67.83, 2, 0)
	MovementLoopAddLocation(NPC, 55.1, 38.15, -70.08, 2, 0)
	MovementLoopAddLocation(NPC, 60.87, 38.02, -74.53, 2, 0)
	MovementLoopAddLocation(NPC, 66.99, 37.22, -77.07, 2, 0)
	MovementLoopAddLocation(NPC, 71.73, 36.39, -77.36, 2, 0)
	MovementLoopAddLocation(NPC, 76.1, 36.04, -74.36, 2, 0)
	MovementLoopAddLocation(NPC, 78.7, 35.59, -72.34, 2, 0)
	MovementLoopAddLocation(NPC, 79.66, 35.2, -69.83, 2, 0)
	MovementLoopAddLocation(NPC, 77.37, 35.92, -73.82, 2, 0)
	MovementLoopAddLocation(NPC, 74.2, 36.18, -76.24, 2, 0)
	MovementLoopAddLocation(NPC, 70.78, 36.55, -77.37, 2, 0)
	MovementLoopAddLocation(NPC, 67.04, 37.2, -76.83, 2, 0)
	MovementLoopAddLocation(NPC, 60.98, 38.02, -74.14, 2, 0)
	MovementLoopAddLocation(NPC, 55.25, 38.15, -70.83, 2, 0)
	MovementLoopAddLocation(NPC, 48.79, 37.93, -68.48, 2, 0)
	MovementLoopAddLocation(NPC, 45.1, 37.88, -69.12, 2, 0)
	MovementLoopAddLocation(NPC, 42.99, 37.89, -73.13, 2, 0)
	MovementLoopAddLocation(NPC, 44.37, 37.9, -76.09, 2, 0)
	MovementLoopAddLocation(NPC, 50.25, 37.87, -81.98, 2, 0)
	MovementLoopAddLocation(NPC, 51.95, 37.85, -89.3, 2, 0)
	MovementLoopAddLocation(NPC, 55.32, 37.85, -94.65, 2, 0)
	MovementLoopAddLocation(NPC, 55.81, 37.86, -107.67, 2, 0)
end

