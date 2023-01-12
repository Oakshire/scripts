--[[
    Script Name    : SpawnScripts/DownBelow_Classic/atombrifterhatchling11.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.01.11 08:01:32
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
	MovementLoopAddLocation(NPC, -194.91, -0.03, -106.14, 2, 4)
	MovementLoopAddLocation(NPC, -192.49, -0.05, -105.54, 2, 0)
	MovementLoopAddLocation(NPC, -191.05, -0.11, -105.42, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -191.05, -0.11, -105.42, 2, 0)
	MovementLoopAddLocation(NPC, -193.46, -0.05, -104.76, 2, 0)
	MovementLoopAddLocation(NPC, -195.62, -0.09, -103.08, 2, 0)
	MovementLoopAddLocation(NPC, -196.62, -0.15, -101.22, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -196.62, -0.15, -101.22, 2, 0)
	MovementLoopAddLocation(NPC, -196.62, -0.15, -101.22, 2, 0)
	MovementLoopAddLocation(NPC, -196.55, -0.1, -102.44, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -196.55, -0.1, -102.44, 2, 0)
	MovementLoopAddLocation(NPC, -198.46, -0.08, -102.14, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -198.46, -0.08, -102.14, 2, 0)
	MovementLoopAddLocation(NPC, -198.26, -0.09, -100.71, 2, 0)
	MovementLoopAddLocation(NPC, -197.39, -0.08, -99.12, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -197.39, -0.08, -99.12, 2, 0)
	MovementLoopAddLocation(NPC, -197.3, -0.12, -101.67, 2, 0)
	MovementLoopAddLocation(NPC, -195.91, -0.05, -103.74, 2, 0)
	MovementLoopAddLocation(NPC, -192.98, -0.04, -105.37, 2, 0)
	MovementLoopAddLocation(NPC, -191.11, -0.11, -105.29, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -191.11, -0.11, -105.29, 2, 0)
	MovementLoopAddLocation(NPC, -193.33, -0.05, -104.92, 2, 0)
	MovementLoopAddLocation(NPC, -194.91, -0.03, -106.14, 2, 3)
end

