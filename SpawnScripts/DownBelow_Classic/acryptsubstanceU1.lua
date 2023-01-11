--[[
    Script Name    : SpawnScripts/DownBelow_Classic/acryptsubstanceU1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.10 09:01:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

AddTimer(NPC, 5000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -183.14, -0.09, -189.84, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -183.14, -0.09, -189.84, 2, 0)
	MovementLoopAddLocation(NPC, -182.21, -0.09, -191.95, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -182.21, -0.09, -191.95, 2, 0)
	MovementLoopAddLocation(NPC, -183.22, -0.09, -190.2, 2, 0)
	MovementLoopAddLocation(NPC, -183.7, -0.09, -187.35, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -183.7, -0.09, -187.35, 2, 0)
	MovementLoopAddLocation(NPC, -182.87, -0.09, -189.78, 2, 0)
	MovementLoopAddLocation(NPC, -179.02, -0.14, -189.84, 2, 0)
	MovementLoopAddLocation(NPC, -177.76, -0.08, -188.56, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -177.76, -0.08, -188.56, 2, 0)
	MovementLoopAddLocation(NPC, -179.62, -0.14, -189.92, 2, 0)
	MovementLoopAddLocation(NPC, -181.47, -0.18, -190.61, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -181.47, -0.18, -190.61, 2, 0)
	MovementLoopAddLocation(NPC, -183.77, -0.09, -189.8, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -183.77, -0.09, -189.8, 2, 0)
end

