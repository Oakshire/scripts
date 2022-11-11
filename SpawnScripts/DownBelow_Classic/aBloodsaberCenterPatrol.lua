--[[
    Script Name    : SpawnScripts/DownBelow_Classic/aBloodsaberCenterPatrol.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.11 02:11:18
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
	MovementLoopAddLocation(NPC, 6.82, -4, -160.27, 2, 5)
	MovementLoopAddLocation(NPC, 6.8, -3.95, -154.26, 2, 0)
	MovementLoopAddLocation(NPC, 7.5, -2.48, -151.34, 2, 0)
	MovementLoopAddLocation(NPC, 6.67, -1.12, -148.5, 2, 0)
	MovementLoopAddLocation(NPC, 6.78, -0.02, -146.19, 2, 0)
	MovementLoopAddLocation(NPC, 6.87, 0.11, -143.39, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, 6.87, 0.11, -143.39, 2, 0)
	MovementLoopAddLocation(NPC, 7.06, 0, -146.06, 2, 0)
	MovementLoopAddLocation(NPC, 7.43, -1.74, -149.85, 2, 0)
	MovementLoopAddLocation(NPC, 6.75, -3.9, -154.11, 2, 0)
	MovementLoopAddLocation(NPC, 6.82, -4, -160.27, 2, 2)
end

