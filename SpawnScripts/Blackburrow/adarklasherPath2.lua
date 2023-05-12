--[[
    Script Name    : SpawnScripts/Blackburrow/adarklasherPath2.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.11 07:05:34
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -41.05, -17.52, 22.56, 2, 0)
	MovementLoopAddLocation(NPC, -39.37, -17.27, 20.51, 2, 0)
	MovementLoopAddLocation(NPC, -52.02, -18.4, 5.94, 2, 0)
	MovementLoopAddLocation(NPC, -52.02, -18.4, 5.94, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -48.96, -18.31, 4.03, 2, 0)
	MovementLoopAddLocation(NPC, -48.96, -18.31, 4.03, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -43.53, -17.26, 7.83, 2, 0)
	MovementLoopAddLocation(NPC, -43.53, -17.26, 7.83, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -46.45, -17.97, 22.31, 2, 0)
	MovementLoopAddLocation(NPC, -46.45, -17.97, 22.31, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -51.61, -18.36, 2.18, 2, 0)
	MovementLoopAddLocation(NPC, -51.61, -18.36, 2.18, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -42.52, -17.14, 8.81, 2, 0)
	MovementLoopAddLocation(NPC, -42.52, -17.14, 8.81, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -45.71, -17.89, -1.7, 2, 0)
	MovementLoopAddLocation(NPC, -45.71, -17.89, -1.7, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -48.42, -18.26, 17.05, 2, 0)
	MovementLoopAddLocation(NPC, -48.42, -18.26, 17.05, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -43.74, -17.85, -0.73, 2, 0)
	MovementLoopAddLocation(NPC, -43.74, -17.85, -0.73, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -40.06, -17.24, 18.22, 2, 0)
	MovementLoopAddLocation(NPC, -40.62, -17.52, 21.73, 2, 0)
	MovementLoopAddLocation(NPC, -40.62, -17.52, 21.73, 2, math.random(5,10))
end

