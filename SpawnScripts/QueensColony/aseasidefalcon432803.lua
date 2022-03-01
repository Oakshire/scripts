--[[
    Script Name    : SpawnScripts/QueensColony/aseasidefalcon432803.lua
	Script Purpose	:	Waypoint Path for falcon_029_01.lua
	Script Author	:	Rylec
	Script Date		:	04-19-2020 02:18:17 
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
	MovementLoopAddLocation(NPC, 154.15, 1.57, 136.79, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 158.31, -0.37, 149.6, 2, 0)
	MovementLoopAddLocation(NPC, 156.02, -0.59, 172.84, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.17, -0.33, 151.17, 2, 0)
	MovementLoopAddLocation(NPC, 144.35, 0.85, 146.5, 2, 0)
	MovementLoopAddLocation(NPC, 141.6, 1.35, 143.3, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 138.47, 1.97, 156.55, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 170.38, 1.51, 164.47, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 185.72, 0.55, 162.08, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 187.59, 1.34, 153.25, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 182.99, 0.86, 151.11, 2, 0)
	MovementLoopAddLocation(NPC, 173.05, -0.55, 141.4, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 154.9, 1.43, 135.48, 2, 0)
end


