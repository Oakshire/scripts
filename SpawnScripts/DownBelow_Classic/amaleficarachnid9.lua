--[[
    Script Name    : SpawnScripts/DownBelow_Classic/amaleficarachnid9.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.09 09:01:52
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
	MovementLoopAddLocation(NPC, -83.5, -0.06, -193.69, 2, 4)
	MovementLoopAddLocation(NPC, -85.14, -0.09, -191.97, 2, 0)
	MovementLoopAddLocation(NPC, -85.47, -0.1, -190.27, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -85.47, -0.1, -190.27, 2, 0)
	MovementLoopAddLocation(NPC, -84.18, -0.06, -191.5, 2, 0)
	MovementLoopAddLocation(NPC, -82.97, -0.05, -190.93, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -82.97, -0.05, -190.93, 2, 0)
	MovementLoopAddLocation(NPC, -85.05, -0.07, -192.74, 2, 0)
	MovementLoopAddLocation(NPC, -86.63, -0.09, -192.19, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -86.63, -0.09, -192.19, 2, 0)
	MovementLoopAddLocation(NPC, -85.09, -0.1, -190.1, 2, 0)
	MovementLoopAddLocation(NPC, -83.3, -0.07, -188.91, 2, 0)
	MovementLoopAddLocation(NPC, -82.59, -0.08, -187.52, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -82.59, -0.08, -187.52, 2, 0)
	MovementLoopAddLocation(NPC, -84.38, -0.09, -189.44, 2, 0)
	MovementLoopAddLocation(NPC, -85.03, -0.07, -192.72, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -85.03, -0.07, -192.72, 2, 0)
	MovementLoopAddLocation(NPC, -83.5, -0.06, -193.69, 2, 3)
end

