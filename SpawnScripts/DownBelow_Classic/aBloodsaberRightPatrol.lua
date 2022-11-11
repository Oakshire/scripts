--[[
    Script Name    : SpawnScripts/DownBelow_Classic/aBloodsaberRightPatrol.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.11 01:11:10
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
	MovementLoopAddLocation(NPC, -15.08, -4, -137.89, 2, 5)
	MovementLoopAddLocation(NPC, -9.38, -4, -137.33, 2, 0)
	MovementLoopAddLocation(NPC, -6.54, -2.63, -138.17, 2, 0)
	MovementLoopAddLocation(NPC, -1.15, -0.01, -137.75, 2, 0)
	MovementLoopAddLocation(NPC, 1.42, 0, -137.86, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 1.42, 0, -137.86, 2, 0)
	MovementLoopAddLocation(NPC, -0.93, 0, -138.66, 2, 0)
	MovementLoopAddLocation(NPC, -4.62, -1.65, -137.81, 2, 0)
	MovementLoopAddLocation(NPC, -9.29, -3.96, -138.03, 2, 0)
	MovementLoopAddLocation(NPC, -15.08, -4, -137.89, 2, 2)
end
