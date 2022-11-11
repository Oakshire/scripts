--[[
    Script Name    : SpawnScripts/DownBelow_Classic/aBloodsaberLeftPatrol.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.11 01:11:34
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
	MovementLoopAddLocation(NPC, 28.87, -4, -137.87, 2, 7)
	MovementLoopAddLocation(NPC, 23.37, -4, -137.96, 2, 0)
	MovementLoopAddLocation(NPC, 19.88, -2.26, -137.53, 2, 0)
	MovementLoopAddLocation(NPC, 15.13, -0.01, -138.02, 2, 0)
	MovementLoopAddLocation(NPC, 12.49, 0.02, -137.92, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 12.49, 0.02, -137.92, 2, 0)
	MovementLoopAddLocation(NPC, 14.93, 0, -138.48, 2, 0)
	MovementLoopAddLocation(NPC, 18.48, -1.58, -137.26, 2, 0)
	MovementLoopAddLocation(NPC, 23.39, -4, -138.49, 2, 0)
	MovementLoopAddLocation(NPC, 28.87, -4, -137.87, 2, 2)
end

