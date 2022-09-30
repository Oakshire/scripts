--[[
    Script Name    : SpawnScripts/IsleRefuge1/aGruttoothsentry1.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.09.09 06:09:34
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
	MovementLoopAddLocation(NPC, 218.36, -0.95, -202.78, 2, 5)
	MovementLoopAddLocation(NPC, 213.66, -0.93, -199.76, 2, 0)
	MovementLoopAddLocation(NPC, 211.05, -0.93, -191.92, 2, 0)
	MovementLoopAddLocation(NPC, 210.11, -0.93, -186.03, 2, 0)
	MovementLoopAddLocation(NPC, 206.36, -0.94, -183.09, 2, 0)
	MovementLoopAddLocation(NPC, 197, -0.88, -180.48, 2, 0)
	MovementLoopAddLocation(NPC, 185.91, -0.84, -180.94, 2, 0)
	MovementLoopAddLocation(NPC, 178.82, -0.81, -185.32, 2, 0)
	MovementLoopAddLocation(NPC, 175.94, -0.8, -189.03, 2, 0)
	MovementLoopAddLocation(NPC, 173.07, -0.79, -196.39, 2, 0)
	MovementLoopAddLocation(NPC, 169.42, -0.77, -201.23, 2, 0)
	MovementLoopAddLocation(NPC, 163.87, -0.75, -204.65, 2, 0)
	MovementLoopAddLocation(NPC, 147.04, -0.69, -206.53, 2, 0)
	MovementLoopAddLocation(NPC, 142.29, -0.67, -204.69, 2, 0)
	MovementLoopAddLocation(NPC, 133.3, -0.62, -198.64, 2, 0)
	MovementLoopAddLocation(NPC, 126.82, -0.62, -190.96, 2, 0)
	MovementLoopAddLocation(NPC, 121.13, -0.6, -178.11, 2, 0)
	MovementLoopAddLocation(NPC, 118.32, -0.59, -174.96, 2, 0)
	MovementLoopAddLocation(NPC, 99.76, -0.52, -173.03, 2, 0)
	MovementLoopAddLocation(NPC, 94.9, -0.5, -174.06, 2, 0)
	MovementLoopAddLocation(NPC, 90.4, -0.48, -178.25, 2, 0)
	MovementLoopAddLocation(NPC, 89.42, -0.48, -183.31, 2, 0)
	MovementLoopAddLocation(NPC, 88.43, -0.47, -192.38, 2, 0)
	MovementLoopAddLocation(NPC, 84.89, -0.46, -197.29, 2, 0)
	MovementLoopAddLocation(NPC, 78.98, -0.44, -201.27, 2, 0)
	MovementLoopAddLocation(NPC, 72.27, -0.04, -204.87, 2, 0)
	MovementLoopAddLocation(NPC, 64.63, 1.5, -210.7, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 64.63, 1.5, -210.7, 2, 0)
	MovementLoopAddLocation(NPC, 71.48, 0, -205.4, 2, 0)
	MovementLoopAddLocation(NPC, 85.54, -0.46, -197.87, 2, 0)
	MovementLoopAddLocation(NPC, 88.55, -0.47, -191.41, 2, 0)
	MovementLoopAddLocation(NPC, 89.38, -0.48, -187.36, 2, 0)
	MovementLoopAddLocation(NPC, 90.27, -0.48, -180.19, 2, 0)
	MovementLoopAddLocation(NPC, 92.72, -0.49, -175.69, 2, 0)
	MovementLoopAddLocation(NPC, 96.28, -0.51, -173.8, 2, 0)
	MovementLoopAddLocation(NPC, 114.39, -0.57, -174.06, 2, 0)
	MovementLoopAddLocation(NPC, 118.97, -0.59, -175.64, 2, 0)
	MovementLoopAddLocation(NPC, 121.12, -0.6, -178.54, 2, 0)
	MovementLoopAddLocation(NPC, 125.25, -0.61, -189.46, 2, 0)
	MovementLoopAddLocation(NPC, 132.25, -0.61, -197.62, 2, 0)
	MovementLoopAddLocation(NPC, 143.22, -0.67, -205.56, 2, 0)
	MovementLoopAddLocation(NPC, 157.03, -0.72, -206.29, 2, 0)
	MovementLoopAddLocation(NPC, 165.26, -0.76, -204.09, 2, 0)
	MovementLoopAddLocation(NPC, 171.67, -0.78, -200, 2, 0)
	MovementLoopAddLocation(NPC, 174.53, -0.79, -195.28, 2, 0)
	MovementLoopAddLocation(NPC, 176.5, -0.8, -188.71, 2, 0)
	MovementLoopAddLocation(NPC, 180.85, -0.82, -184.08, 2, 0)
	MovementLoopAddLocation(NPC, 184.24, -0.83, -181.97, 2, 0)
	MovementLoopAddLocation(NPC, 194.26, -0.87, -180.66, 2, 0)
	MovementLoopAddLocation(NPC, 201.2, -0.91, -181.87, 2, 0)
	MovementLoopAddLocation(NPC, 207.07, -0.93, -184.05, 2, 0)
	MovementLoopAddLocation(NPC, 209.36, -0.92, -186.55, 2, 0)
	MovementLoopAddLocation(NPC, 210.61, -0.93, -189.94, 2, 0)
	MovementLoopAddLocation(NPC, 211.44, -0.93, -196.76, 2, 0)
	MovementLoopAddLocation(NPC, 214.86, -0.94, -200.9, 2, 0)
	MovementLoopAddLocation(NPC, 218.36, -0.95, -202.78, 2, 0)
end

