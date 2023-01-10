--[[
    Script Name    : SpawnScripts/DownBelow_Classic/aBloodsaberscout2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.09 08:01:10
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
	MovementLoopAddLocation(NPC, 2.4, -0.06, -105.92, 2, 4)
	MovementLoopAddLocation(NPC, -1.06, -0.11, -102.56, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -1.06, -0.11, -102.56, 2, 0)
	MovementLoopAddLocation(NPC, 2.2, -0.02, -106.53, 2, 0)
	MovementLoopAddLocation(NPC, 6.03, -0.05, -108.01, 2, 0)
	MovementLoopAddLocation(NPC, 10.85, 0.17, -103.98, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 10.85, 0.17, -103.98, 2, 0)
	MovementLoopAddLocation(NPC, 7.71, -0.09, -107.95, 2, 0)
	MovementLoopAddLocation(NPC, 4.38, -0.04, -107.53, 2, 0)
	MovementLoopAddLocation(NPC, 3.15, -0.12, -105.54, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 3.15, -0.12, -105.54, 2, 0)
	MovementLoopAddLocation(NPC, 4.2, -0.01, -108.28, 2, 0)
	MovementLoopAddLocation(NPC, 10.57, -0.07, -107.69, 2, 0)
	MovementLoopAddLocation(NPC, 12.16, 0.04, -106.97, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 12.16, 0.04, -106.97, 2, 0)
	MovementLoopAddLocation(NPC, 7.89, -0.06, -108.33, 2, 0)
	MovementLoopAddLocation(NPC, 3.96, -0.06, -107.18, 2, 0)
	MovementLoopAddLocation(NPC, 0.08, -0.09, -104.24, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 0.08, -0.09, -104.24, 2, 0)
	MovementLoopAddLocation(NPC, 0.52, -0.05, -101.78, 2, 0)
	MovementLoopAddLocation(NPC, -0.2, -0.07, -101.39, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -0.2, -0.07, -101.39, 2, 0)
	MovementLoopAddLocation(NPC, 2.4, -0.07, -103.88, 2, 0)
	MovementLoopAddLocation(NPC, 3.34, -0.05, -107.11, 2, 0)
	MovementLoopAddLocation(NPC, 6.83, -0.07, -107.96, 2, 0)
	MovementLoopAddLocation(NPC, 8.14, -0.1, -106.27, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 8.14, -0.1, -106.27, 2, 0)
	MovementLoopAddLocation(NPC, 5.72, -0.05, -107.8, 2, 0)
	MovementLoopAddLocation(NPC, 2.4, -0.06, -105.92, 2, 3)
end

