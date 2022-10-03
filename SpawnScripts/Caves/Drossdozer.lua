--[[
    Script Name    : SpawnScripts/Caves/Drossdozer.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.03 03:10:05
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
	MovementLoopAddLocation(NPC, -42.33, 33.32, -51.54, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, -31.27, 33.67, -53.77, 1,  math.random(5,10))
	MovementLoopAddLocation(NPC, -31.27, 33.67, -53.77, 1, 0)
	MovementLoopAddLocation(NPC, -41.76, 33.3, -58.75, 1,  math.random(5,10))
	MovementLoopAddLocation(NPC, -41.76, 33.3, -58.75, 1, 0)
	MovementLoopAddLocation(NPC, -32.22, 33.34, -42.87, 1,  math.random(5,10))
	MovementLoopAddLocation(NPC, -32.22, 33.34, -42.87, 1, 0)
	MovementLoopAddLocation(NPC, -34.87, 33.39, -47.26, 1, 0)
	MovementLoopAddLocation(NPC, -30.24, 33.77, -52.87, 1,  math.random(5,10))
	MovementLoopAddLocation(NPC, -30.24, 33.77, -52.87, 1, 0)
	MovementLoopAddLocation(NPC, -49.76, 34.14, -48.48, 1, 0)
	MovementLoopAddLocation(NPC, -42.33, 33.32, -51.54, 1, 0)
end

