--[[
    Script Name    : SpawnScripts/DownBelow_Classic/amaleficarachnid8.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.09 09:01:29
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
	MovementLoopAddLocation(NPC, -88.01, -0.06, -190.38, 2, 4)
	MovementLoopAddLocation(NPC, -85.88, -0.11, -191.68, 2, 0)
	MovementLoopAddLocation(NPC, -83.49, -0.07, -189.15, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -83.49, -0.07, -189.15, 2, 0)
	MovementLoopAddLocation(NPC, -84.28, -0.06, -192.03, 2, 0)
	MovementLoopAddLocation(NPC, -88.73, 0.45, -193.3, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -88.73, 0.45, -193.3, 2, 0)
	MovementLoopAddLocation(NPC, -85.24, -0.07, -193.26, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -85.24, -0.07, -193.26, 2, 0)
	MovementLoopAddLocation(NPC, -85.94, -0.1, -191.87, 2, 0)
	MovementLoopAddLocation(NPC, -83.92, -0.07, -188.89, 2, 0)
	MovementLoopAddLocation(NPC, -83.73, -0.08, -186.51, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -83.73, -0.08, -186.51, 2, 0)
	MovementLoopAddLocation(NPC, -84.26, -0.07, -190.46, 2, 0)
	MovementLoopAddLocation(NPC, -88.01, -0.06, -190.38, 2, 3)
end

