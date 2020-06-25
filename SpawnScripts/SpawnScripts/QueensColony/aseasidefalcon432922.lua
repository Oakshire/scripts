--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432922.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432922.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:22 
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
	MovementLoopAddLocation(NPC, 81.33, -0.29, 201.44, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 87.38, -0.36, 192.33, 2, 0)
	MovementLoopAddLocation(NPC, 88.79, -0.4, 187.37, 2, 0)
	MovementLoopAddLocation(NPC, 88.56, -0.45, 181.05, 2, 0)
	MovementLoopAddLocation(NPC, 93.3, -0.5, 176.95, 2, 0)
	MovementLoopAddLocation(NPC, 105.35, -0.54, 175.21, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 112.9, -1.56, 168.02, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 111.72, -1.1, 178.57, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 107.64, -0.3, 190.91, 2, 0)
	MovementLoopAddLocation(NPC, 105.82, 0.29, 202.65, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 82.92, -0.32, 223.07, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 84.14, -0.3, 214.6, 2, 0)
	MovementLoopAddLocation(NPC, 83.9, 0.3, 201.48, 2, 0)
	MovementLoopAddLocation(NPC, 81.8, 0.34, 190.85, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 87.25, 0.36, 195.16, 2, 0)
	MovementLoopAddLocation(NPC, 91.72, 0.48, 200.77, 2, 0)
	MovementLoopAddLocation(NPC, 95.84, 0.54, 209.93, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 91.86, 0.5, 209.58, 2, 0)
	MovementLoopAddLocation(NPC, 89.43, 0.47, 210.32, 2, 0)
	MovementLoopAddLocation(NPC, 76.91, 0.4, 217.55, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 80.24, -0.29, 202.79, 2, 0)
end


