--[[
    Script Name    : SpawnScripts/QueensColony/aseasidefalcon432808.lua
	Script Purpose	:	Waypoint Path for falcon_029_06.lua
	Script Author	:	Rylec
	Script Date		:	04-19-2020 02:18:31 
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
	MovementLoopAddLocation(NPC, 187.81, 0.53, 147.73, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 181.3, 0.83, 139.41, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 175.15, 0.31, 144.42, 2, 0)
	MovementLoopAddLocation(NPC, 167.01, -0.16, 153.05, 2, 0)
	MovementLoopAddLocation(NPC, 163.17, -0.59, 160.8, 2, 0)
	MovementLoopAddLocation(NPC, 161.51, -0.71, 162.64, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 150.3, -0.67, 160.05, 2, 0)
	MovementLoopAddLocation(NPC, 139.87, -0.64, 156.06, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 124.78, -1.12, 152.17, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 152.57, 1.04, 158.31, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 152.19, 0.76, 155.22, 2, 0)
	MovementLoopAddLocation(NPC, 143.78, -0.86, 146.77, 2, 0)
	MovementLoopAddLocation(NPC, 140.25, -1.03, 139.64, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 154.11, -1.11, 141.68, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.96, -0.78, 142.2, 2, 0)
	MovementLoopAddLocation(NPC, 148.5, -0.31, 144.48, 2, 0)
	MovementLoopAddLocation(NPC, 132.31, 2.07, 162.54, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 136.05, 1.37, 155.84, 2, 0)
	MovementLoopAddLocation(NPC, 136.18, 1.17, 150.19, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 169.79, 1.22, 170.61, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 180.38, 0.8, 159.53, 2, 0)
	MovementLoopAddLocation(NPC, 182.1, 0.75, 155.87, 2, 0)
	MovementLoopAddLocation(NPC, 183.08, 0.61, 151.47, 2, 0)
end


