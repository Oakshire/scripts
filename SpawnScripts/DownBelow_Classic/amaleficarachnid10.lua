--[[
    Script Name    : SpawnScripts/DownBelow_Classic/amaleficarachnid10.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.09 09:01:45
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -81.31, -0.06, -185.26, 2, 4)
	MovementLoopAddLocation(NPC, -83.81, -0.1, -184.46, 2, 0)
	MovementLoopAddLocation(NPC, -85.24, -0.09, -182.27, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -85.24, -0.09, -182.27, 2, 0)
	MovementLoopAddLocation(NPC, -83.71, -0.09, -183.4, 2, 0)
	MovementLoopAddLocation(NPC, -82.84, -0.07, -189.44, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -82.84, -0.07, -189.44, 2, 0)
	MovementLoopAddLocation(NPC, -83.07, -0.07, -186.83, 2, 0)
	MovementLoopAddLocation(NPC, -84.5, -0.1, -185.24, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -84.5, -0.1, -185.24, 2, 0)
	MovementLoopAddLocation(NPC, -82.58, -0.04, -184.01, 2, 0)
	MovementLoopAddLocation(NPC, -83.23, -0.05, -182.59, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -83.23, -0.05, -182.59, 2, 0)
	MovementLoopAddLocation(NPC, -82.69, -0.06, -186.52, 2, 0)
	MovementLoopAddLocation(NPC, -81.31, -0.06, -185.26, 2, 3)
end

