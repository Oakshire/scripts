--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432859.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432859.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:11 
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
	MovementLoopAddLocation(NPC, 89.54, -1.46, 215.52, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 85.16, -1.38, 204.78, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 96.58, -0.9, 210.07, 2, 0)
	MovementLoopAddLocation(NPC, 97.24, -0.81, 211.81, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 94.32, -0.21, 214.08, 2, 0)
	MovementLoopAddLocation(NPC, 82.69, -0.4, 212.63, 2, 0)
	MovementLoopAddLocation(NPC, 70.92, -0.62, 210.04, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 96.68, -0.49, 182.59, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 95.89, -0.55, 180.54, 2, 0)
	MovementLoopAddLocation(NPC, 95.92, -0.61, 175, 2, 0)
	MovementLoopAddLocation(NPC, 108.67, -0.76, 165.64, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 101.07, -0.49, 171.35, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 82.99, -0.54, 197.62, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 93.76, -0.6, 208.38, 2, math.random(10, 24))
end


