--[[
    Script Name    : SpawnScripts/DownBelow_Classic/aBloodsabermeddlerGuard.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.10 09:11:10
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
	MovementLoopAddLocation(NPC, 12.33, 0.16, -104.32, 2, 3)
	MovementLoopAddLocation(NPC, 7.33, -0.07, -109.17, 2, 0)
	MovementLoopAddLocation(NPC, 7.3, -0.08, -111.79, 2, 0)
	MovementLoopAddLocation(NPC, 7.13, -0.08, -109.98, 2, math.random(4,7))
	MovementLoopAddLocation(NPC, 7.13, -0.08, -109.98, 2, 0)
	MovementLoopAddLocation(NPC, 8.53, -0.09, -105.98, 2, 0)
	MovementLoopAddLocation(NPC, 9.84, 0.12, -103.85, 2, math.random(4,7))
	MovementLoopAddLocation(NPC, 9.84, 0.12, -103.85, 2, 0)
	MovementLoopAddLocation(NPC, 11.15, -0.06, -108.09, 2, 0)
	MovementLoopAddLocation(NPC, 11.12, -0.05, -107.92, 2, math.random(4,7))
	MovementLoopAddLocation(NPC, 10.11, -0.07, -107.21, 2, 0)
	MovementLoopAddLocation(NPC, 5.93, -0.02, -108.39, 2, 0)
	MovementLoopAddLocation(NPC, 2.6, -0.06, -106.2, 2, 0)
	MovementLoopAddLocation(NPC, 1.07, -0.07, -103.21, 2, math.random(4,7))
	MovementLoopAddLocation(NPC, 1.07, -0.07, -103.21, 2, 0)
	MovementLoopAddLocation(NPC, 2.78, -0.03, -106.94, 2, 0)
	MovementLoopAddLocation(NPC, 4.7, -0.05, -107.58, 2, 0)
	MovementLoopAddLocation(NPC, 5.66, -0.08, -111.18, 2, 0)
	MovementLoopAddLocation(NPC, 5.52, -0.08, -110.49, 2, math.random(4,7))
	MovementLoopAddLocation(NPC, 7.44, -0.08, -109.53, 2, 0)
	MovementLoopAddLocation(NPC, 8.86, -0.09, -106.35, 2, 0)
	MovementLoopAddLocation(NPC, 10.97, 0.23, -103.03, 2, math.random(4,7))
	MovementLoopAddLocation(NPC, 10.97, 0.23, -103.03, 2, 0)
	MovementLoopAddLocation(NPC, 8.12, -0.12, -107.76, 2, 0)
	MovementLoopAddLocation(NPC, 5.37, -0.05, -107.72, 2, math.random(4,7))
	MovementLoopAddLocation(NPC, 8.48, -0.12, -107.58, 2, 0)
	MovementLoopAddLocation(NPC, 12.33, 0.16, -104.32, 2, 2)
end

