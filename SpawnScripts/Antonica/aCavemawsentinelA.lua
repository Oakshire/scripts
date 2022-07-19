--[[
    Script Name    : SpawnScripts/Antonica/aCavemawsentinelA.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.19 06:07:38
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -919.84, -19.81, -95.74, 2, 5)
	MovementLoopAddLocation(NPC, -921.93, -18.26, -79.45, 2, 0)
	MovementLoopAddLocation(NPC, -912.37, -18.23, -72.21, 2, 0)
	MovementLoopAddLocation(NPC, -898.26, -18.49, -73.18, 2, 0)
	MovementLoopAddLocation(NPC, -881.36, -19.98, -77.61, 2, 0)
	MovementLoopAddLocation(NPC, -866.63, -23.75, -58.67, 2, 0)
	MovementLoopAddLocation(NPC, -847.1, -27.56, -54.52, 2, 0)
	MovementLoopAddLocation(NPC, -830.82, -29.23, -52.76, 2, 0)
	MovementLoopAddLocation(NPC, -831.54, -29.44, -36.74, 2, 0)
	MovementLoopAddLocation(NPC, -831.98, -30.49, -22.28, 2, 0)
	MovementLoopAddLocation(NPC, -830.95, -29.47, -35.18, 2, 0)
	MovementLoopAddLocation(NPC, -829.36, -29.5, -50.49, 2, 0)
	MovementLoopAddLocation(NPC, -841.37, -28.36, -53.8, 2, 0)
	MovementLoopAddLocation(NPC, -856.27, -26.12, -53.47, 2, 0)
	MovementLoopAddLocation(NPC, -875.64, -20.87, -76.33, 2, 0)
	MovementLoopAddLocation(NPC, -890.73, -19.05, -72.29, 2, 0)
	MovementLoopAddLocation(NPC, -915.26, -18.24, -72.53, 2, 0)
	MovementLoopAddLocation(NPC, -919.02, -18.38, -78.6, 2, 0)
	MovementLoopAddLocation(NPC, -919.43, -18.69, -85.35, 2, 0)
	MovementLoopAddLocation(NPC, -919.84, -19.81, -95.74, 2, 0)
end

