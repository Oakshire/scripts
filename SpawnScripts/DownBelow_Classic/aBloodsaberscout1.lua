--[[
    Script Name    : SpawnScripts/DownBelow_Classic/aBloodsaberscout1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.09 07:01:23
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
	MovementLoopAddLocation(NPC, 8.55, -0.11, -107.25, 2, 3)
	MovementLoopAddLocation(NPC, 12.39, 0.15, -104.55, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 12.39, 0.15, -104.55, 2, 0)
	MovementLoopAddLocation(NPC, 6.32, -0.05, -107.98, 2, 0)
	MovementLoopAddLocation(NPC, 3.23, -0.03, -107.39, 2, 0)
	MovementLoopAddLocation(NPC, -0.7, -0.1, -103.2, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -0.7, -0.1, -103.2, 2, 0)
	MovementLoopAddLocation(NPC, 3.78, -0.1, -104.67, 2, math.random(5,10))
--	MovementLoopAddLocation(NPC, 3.32, -0.1, -104.63, 2, 0)
--	MovementLoopAddLocation(NPC, 3.32, -0.1, -104.63, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 3.45, -0.03, -107.37, 2, 0)
	MovementLoopAddLocation(NPC, 7.27, -0.09, -107.81, 2, 0)
	MovementLoopAddLocation(NPC, 13.88, 0.14, -104.39, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 13.88, 0.14, -104.39, 2, 0)
	MovementLoopAddLocation(NPC, 7.34, 0.2, -104.47, 2, 0)
	MovementLoopAddLocation(NPC, 7.89, -0.03, -104.4, 2, 0)
	MovementLoopAddLocation(NPC, 7.89, -0.03, -104.4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 7.06, -0.09, -107.77, 2, 0)
	MovementLoopAddLocation(NPC, 3.27, -0.05, -107.11, 2, 0)
	MovementLoopAddLocation(NPC, 3.8, 0.13, -102.28, 2, math.random(5,10))
--  MovementLoopAddLocation(NPC, 3.75, -0.03, -102.84, 2, math.random(5,10))
--	MovementLoopAddLocation(NPC, 3.75, -0.03, -102.84, 2, 0)
	MovementLoopAddLocation(NPC, 2.51, -0.11, -104.87, 2, 0)
	MovementLoopAddLocation(NPC, 3.75, -0.08, -106.9, 2, 0)
	MovementLoopAddLocation(NPC, 8.55, -0.11, -107.25, 2, 4)
end

