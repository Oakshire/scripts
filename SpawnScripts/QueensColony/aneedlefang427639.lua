--[[
    Script Name    : SpawnScripts/QueensColony/aneedlefang427639.lua
	Script Purpose	:	Waypoint Path for needle_020_06.lua
	Script Author	:	Rylec
	Script Date		:	12-31-2019 09:27:41 
	Script Notes	:	Locations collected from Live
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
	MovementLoopAddLocation(NPC, -77.41, -11.19, 17.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.91, -10.3, 6.61, 2, 0)
	MovementLoopAddLocation(NPC, -38.73, -10.36, -9.58, 2, 0)
	MovementLoopAddLocation(NPC, -22.79, -11.78, -21.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.48, -11.36, -19.35, 2, 0)
	MovementLoopAddLocation(NPC, -43.47, -10.44, -11.02, 2, 0)
	MovementLoopAddLocation(NPC, -54.01, -10.46, -3.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.61, -11.07, -11.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.15, -10.74, -14.15, 2, 0)
	MovementLoopAddLocation(NPC, -12.85, -11.69, -24.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.97, -11.96, -18.44, 2, 0)
	MovementLoopAddLocation(NPC, -8.63, -12.7, -9.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.09, -11.69, -19.11, 2, 0)
	MovementLoopAddLocation(NPC, -11.95, -11.19, -31.94, 2, 0)
	MovementLoopAddLocation(NPC, -14.35, -11.5, -43.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.98, -11.07, -46.91, 2, 0)
	MovementLoopAddLocation(NPC, -12.85, -11.11, -54.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.65, -10.67, -44.24, 2, 0)
	MovementLoopAddLocation(NPC, -35.18, -10.29, -28.97, 2, 0)
	MovementLoopAddLocation(NPC, -43.61, -10.28, -22.96, 2, 0)
	MovementLoopAddLocation(NPC, -70.29, -10.3, 6.42, 2, 0)
end


