--[[
    Script Name    : SpawnScripts/Blackburrow/adarklasherPath1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.05.03 07:05:22
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
	MovementLoopAddLocation(NPC, -13.79, -12.84, 18.13, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -13.79, -12.84, 18.13, 2, 0)
	MovementLoopAddLocation(NPC, -33.34, -16.12, 18.35, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -33.34, -16.12, 18.35, 2, 0)
	MovementLoopAddLocation(NPC, -17.05, -13.25, 17.97, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -17.05, -13.25, 17.97, 2, 0)
	MovementLoopAddLocation(NPC, -18.15, -13.29, 18.9, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -18.15, -13.29, 18.9, 2, 0)
	MovementLoopAddLocation(NPC, -32.2, -15.85, 15.53, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -32.2, -15.85, 15.53, 2, 0)
	MovementLoopAddLocation(NPC, -28.77, -15.16, 16.25, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -28.77, -15.16, 16.25, 2, 0)
	MovementLoopAddLocation(NPC, -23.63, -14.06, 20.05, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -23.63, -14.06, 20.05, 2, 0)
	MovementLoopAddLocation(NPC, -28.56, -15.12, 17.33, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -28.56, -15.12, 17.33, 2, 0)
	MovementLoopAddLocation(NPC, -27.56, -14.89, 20.29, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -27.56, -14.89, 20.29, 2, 0)
	MovementLoopAddLocation(NPC, -18.74, -13.25, 16.49, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -18.74, -13.25, 16.49, 2, 0)
end
