--[[
    Script Name    : SpawnScripts/DownBelow_Classic/atombrifterhatchling12.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.11 09:01:04
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
	MovementLoopAddLocation(NPC, -192.77, -0.09, -104.54, 2, 4)
	MovementLoopAddLocation(NPC, -194.67, -0.1, -102.91, 2, 0)
	MovementLoopAddLocation(NPC, -196.36, -0.08, -98.21, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -196.36, -0.08, -98.21, 2, 0)
	MovementLoopAddLocation(NPC, -198.52, -0.08, -98.35, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -198.52, -0.08, -98.35, 2, 0)
	MovementLoopAddLocation(NPC, -197.78, -0.08, -99.19, 2, 0)
	MovementLoopAddLocation(NPC, -198.73, -0.08, -102.01, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -198.73, -0.08, -102.01, 2, 0)
	MovementLoopAddLocation(NPC, -197.25, -0.06, -104.27, 2, 0)
	MovementLoopAddLocation(NPC, -196.82, -0.05, -103.34, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -193.51, -0.02, -106.34, 2, 0)
	MovementLoopAddLocation(NPC, -192, -0.04, -106.69, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -192, -0.04, -106.69, 2, 0)
	MovementLoopAddLocation(NPC, -193.16, -0.01, -106.3, 2, 0)
	MovementLoopAddLocation(NPC, -195.68, -0.03, -104.08, 2, 0)
	MovementLoopAddLocation(NPC, -192.77, -0.09, -104.54, 2, 3)
end

