--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothprotectorP2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.13 11:09:22
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
    MovementLoopAddLocation(NPC, 23.74, 2.90, -120.05, 2, 5)
	MovementLoopAddLocation(NPC, -3.74, 1.85, -124.49, 2, 0)
	MovementLoopAddLocation(NPC, -18.06, 1.9, -126.92, 2, 0)
	MovementLoopAddLocation(NPC, -21.22, 1.91, -128, 2, 0)
	MovementLoopAddLocation(NPC, -24.68, 1.92, -128.52, 2, 0)
	MovementLoopAddLocation(NPC, -29, 1.94, -127.59, 2, 0)
	MovementLoopAddLocation(NPC, -31.73, 1.95, -127.31, 2, 0)
	MovementLoopAddLocation(NPC, -33.21, 1.95, -128.16, 2, 0)
	MovementLoopAddLocation(NPC, -40.67, 1.98, -135.46, 2, 0)
	MovementLoopAddLocation(NPC, -43.21, 1.99, -137.54, 2, 0)
	MovementLoopAddLocation(NPC, -47.96, 2.01, -140.12, 2, 0)
	MovementLoopAddLocation(NPC, -51.15, 2.02, -142.33, 2, 0)
	MovementLoopAddLocation(NPC, -52.06, 2.03, -144.96, 2, 0)
	MovementLoopAddLocation(NPC, -52.53, 2.03, -148.55, 2, 0)
	MovementLoopAddLocation(NPC, -50.96, 2.03, -155.08, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -50.96, 2.03, -155.08, 2, 0)
	MovementLoopAddLocation(NPC, -52.47, 2.03, -150.27, 2, 0)
	MovementLoopAddLocation(NPC, -52.96, 2.03, -146.7, 2, 0)
	MovementLoopAddLocation(NPC, -51.98, 2.03, -144.28, 2, 0)
	MovementLoopAddLocation(NPC, -43.34, 1.99, -137.31, 2, 0)
	MovementLoopAddLocation(NPC, -36.79, 1.97, -130.47, 2, 0)
	MovementLoopAddLocation(NPC, -34.89, 1.96, -128.69, 2, 0)
	MovementLoopAddLocation(NPC, -33.2, 1.95, -127.58, 2, 0)
	MovementLoopAddLocation(NPC, -30.73, 1.94, -127.33, 2, 0)
	MovementLoopAddLocation(NPC, -28.23, 1.94, -127.75, 2, 0)
	MovementLoopAddLocation(NPC, -26.28, 1.93, -128.78, 2, 0)
	MovementLoopAddLocation(NPC, -23.17, 1.92, -128.96, 2, 0)
	MovementLoopAddLocation(NPC, -21.57, 1.91, -127.87, 2, 0)
	MovementLoopAddLocation(NPC, -19.13, 1.9, -126.92, 2, 0)
	MovementLoopAddLocation(NPC, -3.74, 1.85, -124.49, 2, 0)
	MovementLoopAddLocation(NPC, 23.74, 2.90, -120.05, 2, 0)
end

