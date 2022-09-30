--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothsentry2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.09 06:09:49
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
	MovementLoopAddLocation(NPC, 176.79, -0.81, -122.35, 2, 5)
	MovementLoopAddLocation(NPC, 178.6, -0.82, -119.32, 2, 0)
	MovementLoopAddLocation(NPC, 180.98, -0.83, -115.64, 2, 0)
	MovementLoopAddLocation(NPC, 191.79, -0.87, -104.59, 2, 0)
	MovementLoopAddLocation(NPC, 196.65, -0.89, -102.53, 2, 0)
	MovementLoopAddLocation(NPC, 210.26, -0.94, -101.14, 2, 0)
	MovementLoopAddLocation(NPC, 214.94, -0.96, -102.84, 2, 0)
	MovementLoopAddLocation(NPC, 218.55, -0.97, -110.61, 2, 0)
	MovementLoopAddLocation(NPC, 221.72, -0.98, -128.05, 2, 0)
	MovementLoopAddLocation(NPC, 224.9, -0.99, -134.96, 2, 0)
	MovementLoopAddLocation(NPC, 229.36, -1, -142.42, 2, 0)
	MovementLoopAddLocation(NPC, 228.98, -1, -148.18, 2, 0)
	MovementLoopAddLocation(NPC, 224.79, -0.98, -156.67, 2, 0)
	MovementLoopAddLocation(NPC, 220.37, -0.97, -160.16, 2, 0)
	MovementLoopAddLocation(NPC, 209.78, -0.93, -165.7, 2, 0)
	MovementLoopAddLocation(NPC, 205.11, -0.91, -170.98, 2, 0)
	MovementLoopAddLocation(NPC, 204.01, -0.93, -178, 2, 0)
	MovementLoopAddLocation(NPC, 205.16, -0.94, -181.88, 2, 0)
	MovementLoopAddLocation(NPC, 209.48, -0.93, -185.39, 2, 0)
	MovementLoopAddLocation(NPC, 210.41, -0.92, -188.15, 2, 0)
	MovementLoopAddLocation(NPC, 211.58, -0.93, -196.25, 2, 0)
	MovementLoopAddLocation(NPC, 215.06, -0.94, -200.54, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 215.06, -0.94, -200.54, 2, 0)
	MovementLoopAddLocation(NPC, 212.5, -0.93, -197.43, 2, 0)
	MovementLoopAddLocation(NPC, 211.31, -0.93, -191.92, 2, 0)
	MovementLoopAddLocation(NPC, 210.2, -0.92, -186.95, 2, 0)
	MovementLoopAddLocation(NPC, 204.67, -0.93, -182.64, 2, 0)
	MovementLoopAddLocation(NPC, 204.21, -0.93, -178.51, 2, 0)
	MovementLoopAddLocation(NPC, 204.56, -0.91, -173.42, 2, 0)
	MovementLoopAddLocation(NPC, 208.72, -0.92, -166.65, 2, 0)
	MovementLoopAddLocation(NPC, 215.76, -0.95, -162.81, 2, 0)
	MovementLoopAddLocation(NPC, 220.56, -0.97, -161.28, 2, 0)
	MovementLoopAddLocation(NPC, 228.04, -1, -151.36, 2, 0)
	MovementLoopAddLocation(NPC, 229.67, -1.01, -145, 2, 0)
	MovementLoopAddLocation(NPC, 228.82, -1, -141.31, 2, 0)
	MovementLoopAddLocation(NPC, 224.8, -0.99, -135.6, 2, 0)
	MovementLoopAddLocation(NPC, 221.57, -0.98, -127.43, 2, 0)
	MovementLoopAddLocation(NPC, 219.77, -0.98, -112.88, 2, 0)
	MovementLoopAddLocation(NPC, 216.77, -0.97, -106.32, 2, 0)
	MovementLoopAddLocation(NPC, 212.82, -0.95, -101.31, 2, 0)
	MovementLoopAddLocation(NPC, 206.66, -0.93, -101, 2, 0)
	MovementLoopAddLocation(NPC, 197.89, -0.9, -102.11, 2, 0)
	MovementLoopAddLocation(NPC, 191.54, -0.87, -104.54, 2, 0)
	MovementLoopAddLocation(NPC, 181.38, -0.83, -114.35, 2, 0)
	MovementLoopAddLocation(NPC, 176.79, -0.81, -122.35, 2, 0)
end

