--[[
    Script Name    : SpawnScripts/DownBelow_Classic/amaleficarachnid11.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.09 09:01:15
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
	MovementLoopAddLocation(NPC, -85.6, -0.07, -185.56, 2, 4)
	MovementLoopAddLocation(NPC, -84, -0.1, -184.76, 2, 0)
	MovementLoopAddLocation(NPC, -85.36, -0.09, -182.52, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -85.36, -0.09, -182.52, 2, 0)
	MovementLoopAddLocation(NPC, -83.61, -0.08, -183.26, 2, 0)
	MovementLoopAddLocation(NPC, -82.76, -0.05, -182.54, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -82.76, -0.05, -182.54, 2, 0)
	MovementLoopAddLocation(NPC, -83.65, -0.09, -185.13, 2, 0)
	MovementLoopAddLocation(NPC, -83.16, -0.08, -188.05, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -83.16, -0.08, -188.05, 2, 0)
	MovementLoopAddLocation(NPC, -84.24, -0.09, -186.2, 2, 0)
	MovementLoopAddLocation(NPC, -83.19, -0.07, -183.88, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -83.19, -0.07, -183.88, 2, 0)
	MovementLoopAddLocation(NPC, -85.01, -0.08, -181.07, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -85.01, -0.08, -181.07, 2, 0)
	MovementLoopAddLocation(NPC, -82.72, -0.05, -182.09, 2, 0)
	MovementLoopAddLocation(NPC, -83.05, -0.05, -183.38, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -83.05, -0.05, -183.38, 2, 0)
	MovementLoopAddLocation(NPC, -85.6, -0.07, -185.56, 2, 3)
end
