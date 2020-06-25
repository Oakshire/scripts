--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432802.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432802.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:41 
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
	MovementLoopAddLocation(NPC, 108.74, -1.7, 189.9, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 111.1, -1.51, 177.58, 2, 0)
	MovementLoopAddLocation(NPC, 110.29, -1.25, 165.9, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 110.98, -1.21, 178.54, 2, 0)
	MovementLoopAddLocation(NPC, 108.15, -1.07, 190.26, 2, 0)
	MovementLoopAddLocation(NPC, 108.86, -1.03, 191.71, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 107.14, -0.76, 193.09, 2, 0)
	MovementLoopAddLocation(NPC, 102.41, -0.37, 195.51, 2, 0)
	MovementLoopAddLocation(NPC, 96.34, -0.37, 197.7, 2, 0)
	MovementLoopAddLocation(NPC, 83.35, -0.37, 211.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 81.98, -0.53, 193.4, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 78.43, 0.25, 200.65, 2, 0)
	MovementLoopAddLocation(NPC, 77.25, 0.69, 217.33, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 86.29, -0.89, 207.47, 2, 0)
	MovementLoopAddLocation(NPC, 90.22, -1.2, 206.2, 2, 4)
	MovementLoopAddLocation(NPC, 101.46, -1.46, 177.18, 2, 0)
	MovementLoopAddLocation(NPC, 110.23, -1.73, 171.1, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 102.15, -1.42, 182.82, 2, 0)
	MovementLoopAddLocation(NPC, 93.95, -0.91, 185.83, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 90.88, -0.68, 206.65, 2, math.random(10, 24))
end

