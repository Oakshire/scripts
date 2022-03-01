--[[
    Script Name    : SpawnScripts/QueensColony/aseasidefalcon432805.lua
	Script Purpose	:	Waypoint Path for falcon_029_04.lua
	Script Author	:	Rylec
	Script Date		:	04-19-2020 02:18:25 
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
	MovementLoopAddLocation(NPC, 152.8, 1.47, 137.36, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 142.88, 1.32, 151.08, 2, 0)
	MovementLoopAddLocation(NPC, 134.31, 0.91, 168.41, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 156.16, 1.47, 152.21, 2, 0)
	MovementLoopAddLocation(NPC, 167.92, 1.77, 147.97, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 167.82, 2.54, 157.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 185.5, 1.55, 164.4, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 175.86, 1.24, 174.04, 2, 0)
	MovementLoopAddLocation(NPC, 174.15, 1.07, 178.27, 2, 0)
	MovementLoopAddLocation(NPC, 169.16, 0.35, 184.72, 2, 0)
	MovementLoopAddLocation(NPC, 163.51, -0.56, 195.46, 2, 0)
	MovementLoopAddLocation(NPC, 161.44, -0.71, 197.29, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 157.61, -0.27, 195.93, 2, 0)
	MovementLoopAddLocation(NPC, 133.69, 1.51, 178.22, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 146.4, 1.22, 141.02, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 140.48, 1.54, 153.27, 2, 0)
	MovementLoopAddLocation(NPC, 134.54, 1.45, 158.17, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 135.63, 1.49, 156.17, 2, 0)
	MovementLoopAddLocation(NPC, 137.48, 1.56, 149.51, 2, math.random(10, 24))
end


