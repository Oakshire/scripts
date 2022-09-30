--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothprotectorP3.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.13 11:09:48
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGoblin2.lua")

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
	MovementLoopAddLocation(NPC, -114.02, 4.32, -166.37, 2, 5)
	MovementLoopAddLocation(NPC, -113.52, 4.31, -161.18, 2, 0)
	MovementLoopAddLocation(NPC, -112.76, 4.31, -159.03, 2, 0)
	MovementLoopAddLocation(NPC, -111.78, 4.31, -157.82, 2, 0)
	MovementLoopAddLocation(NPC, -107.56, 4.29, -155.9, 2, 0)
	MovementLoopAddLocation(NPC, -104.84, 4.28, -153.96, 2, 0)
	MovementLoopAddLocation(NPC, -104.2, 4.28, -152.6, 2, 0)
	MovementLoopAddLocation(NPC, -104.45, 4.28, -150.73, 2, 0)
	MovementLoopAddLocation(NPC, -104.37, 4.28, -141.55, 2, 0)
	MovementLoopAddLocation(NPC, -101.5, 4.26, -133.37, 2, 0)
	MovementLoopAddLocation(NPC, -100.71, 4.26, -132.43, 2, 0)
	MovementLoopAddLocation(NPC, -96.93, 4.25, -129.4, 2, 0)
	MovementLoopAddLocation(NPC, -95.23, 4.24, -127.21, 2, 0)
	MovementLoopAddLocation(NPC, -94.02, 4.23, -123.88, 2, 0)
	MovementLoopAddLocation(NPC, -93.5, 4.23, -121.69, 2, 0)
	MovementLoopAddLocation(NPC, -92.07, 4.21, -119.68, 2, 0)
	MovementLoopAddLocation(NPC, -90.34, 4.2, -118.86, 2, 0)
	MovementLoopAddLocation(NPC, -84.08, 4.14, -120.52, 2, 0)
	MovementLoopAddLocation(NPC, -79.66, 4.13, -123.5, 2, 0)
	MovementLoopAddLocation(NPC, -75.4, 4.11, -128.06, 2, 0)
	MovementLoopAddLocation(NPC, -73.66, 4.11, -131.88, 2, 0)
	MovementLoopAddLocation(NPC, -71.83, 4.1, -133.8, 2, 0)
	MovementLoopAddLocation(NPC, -69.22, 4.09, -134.77, 2, 0)
	MovementLoopAddLocation(NPC, -61.51, 2.48, -134.66, 2, 0)
	MovementLoopAddLocation(NPC, -58.23, 2.31, -134.95, 2, 0)
	MovementLoopAddLocation(NPC, -56.83, 2.23, -136.03, 2, 0)
	MovementLoopAddLocation(NPC, -54.72, 2.04, -139.9, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -54.72, 2.04, -139.9, 2, 0)
	MovementLoopAddLocation(NPC, -56.54, 2.16, -136.72, 2, 0)
	MovementLoopAddLocation(NPC, -59.41, 2.47, -135.22, 2, 0)
	MovementLoopAddLocation(NPC, -61.87, 2.48, -134.43, 2, 0)
	MovementLoopAddLocation(NPC, -68.59, 4, -135.21, 2, 0)
	MovementLoopAddLocation(NPC, -71.01, 4.09, -134.7, 2, 0)
	MovementLoopAddLocation(NPC, -72.89, 4.1, -132.64, 2, 0)
	MovementLoopAddLocation(NPC, -74.21, 4.11, -130.27, 2, 0)
	MovementLoopAddLocation(NPC, -76.23, 4.11, -126.66, 2, 0)
	MovementLoopAddLocation(NPC, -79.33, 4.12, -123.95, 2, 0)
	MovementLoopAddLocation(NPC, -82.71, 4.14, -121.23, 2, 0)
	MovementLoopAddLocation(NPC, -86.89, 4.15, -119.9, 2, 0)
	MovementLoopAddLocation(NPC, -90.15, 4.2, -118.86, 2, 0)
	MovementLoopAddLocation(NPC, -91.68, 4.21, -120.03, 2, 0)
	MovementLoopAddLocation(NPC, -92.91, 4.23, -121.62, 2, 0)
	MovementLoopAddLocation(NPC, -93.54, 4.23, -124.55, 2, 0)
	MovementLoopAddLocation(NPC, -94.91, 4.24, -127.39, 2, 0)
	MovementLoopAddLocation(NPC, -97.18, 4.25, -129.78, 2, 0)
	MovementLoopAddLocation(NPC, -99.71, 4.26, -131.26, 2, 0)
	MovementLoopAddLocation(NPC, -101.6, 4.26, -132.89, 2, 0)
	MovementLoopAddLocation(NPC, -102.93, 4.27, -135.82, 2, 0)
	MovementLoopAddLocation(NPC, -104.18, 4.27, -140.21, 2, 0)
	MovementLoopAddLocation(NPC, -104.3, 4.28, -142.17, 2, 0)
	MovementLoopAddLocation(NPC, -103.8, 4.28, -149.87, 2, 0)
	MovementLoopAddLocation(NPC, -104.45, 4.28, -152.55, 2, 0)
	MovementLoopAddLocation(NPC, -105.7, 4.28, -154.22, 2, 0)
	MovementLoopAddLocation(NPC, -107.68, 4.29, -155.34, 2, 0)
	MovementLoopAddLocation(NPC, -111.24, 4.3, -157.41, 2, 0)
	MovementLoopAddLocation(NPC, -113.13, 4.31, -159.08, 2, 0)
	MovementLoopAddLocation(NPC, -113.76, 4.31, -160.95, 2, 0)
	MovementLoopAddLocation(NPC, -114.02, 4.32, -166.37, 2, 0)
end

