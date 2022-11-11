--[[
    Script Name    : SpawnScripts/DownBelow_Classic/aBloodsaberlookoutGuard.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.10 09:11:55
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
	MovementLoopAddLocation(NPC, 0.86, -0.09, -104.24, 2, 3)
	MovementLoopAddLocation(NPC, -5.46, 0.44, -97.93, 2, math.random(4,7))
	MovementLoopAddLocation(NPC, -5.46, 0.44, -97.93, 2, 0)
	MovementLoopAddLocation(NPC, 2.91, -0.04, -107, 2, 0)
	MovementLoopAddLocation(NPC, 2.23, -0.06, -105.59, 2, math.random(4,7))
	MovementLoopAddLocation(NPC, 2.23, -0.06, -105.59, 2, 0)
	MovementLoopAddLocation(NPC, 4.97, -0.01, -108.13, 2, 0)
	MovementLoopAddLocation(NPC, 8.16, -0.12, -107.61, 2, 0)
	MovementLoopAddLocation(NPC, 11.06, 0.21, -103.56, 2, math.random(4,7))
	MovementLoopAddLocation(NPC, 11.06, 0.21, -103.56, 2, 0)
	MovementLoopAddLocation(NPC, 15.94, 0.23, -103.93, 2, 0)
	MovementLoopAddLocation(NPC, 16.09, 0.25, -103.5, 2, math.random(4,7))
	MovementLoopAddLocation(NPC, 12.57, 0.15, -104.68, 2, 0)
	MovementLoopAddLocation(NPC, 7.07, -0.07, -108.05, 2, 0)
	MovementLoopAddLocation(NPC, 6.01, -0.08, -111.28, 2, 0)
	MovementLoopAddLocation(NPC, 5.93, -0.08, -110.92, 2, math.random(4,7))
	MovementLoopAddLocation(NPC, 5.51, -0.05, -108.94, 2, 0)
	MovementLoopAddLocation(NPC, 0.99, -0.08, -103.31, 2, math.random(4,7))
	MovementLoopAddLocation(NPC, 0.99, -0.08, -103.31, 2, 0)
	MovementLoopAddLocation(NPC, 3.26, -0.02, -107.45, 2, 0)
	MovementLoopAddLocation(NPC, 2.61, -0.02, -106.95, 2, math.random(4,7))
	MovementLoopAddLocation(NPC, 2.61, -0.02, -106.95, 2, 0)
	MovementLoopAddLocation(NPC, -0.6, -0.1, -101.81, 2, 0)
	MovementLoopAddLocation(NPC, 2.12, -0.06, -100.62, 2, 0)
	MovementLoopAddLocation(NPC, 1.95, -0.05, -100.67, 2, math.random(4,7))
	MovementLoopAddLocation(NPC, 0.19, -0.08, -102.27, 2, 0)
	MovementLoopAddLocation(NPC, 1.96, -0.08, -105.03, 2, 0)
	MovementLoopAddLocation(NPC, 0.86, -0.09, -104.24, 2, 2)
end

