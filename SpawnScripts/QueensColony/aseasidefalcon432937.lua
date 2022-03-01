--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432937.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432937.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:30 
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
	MovementLoopAddLocation(NPC, 101.24, -1.75, 171.04, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 95.44, -0.58, 179.25, 2, 0)
	MovementLoopAddLocation(NPC, 92.15, -0.39, 208.27, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 104.08, -0.49, 185.77, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 105.41, -0.29, 181.37, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 111.95, 0.61, 168.6, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 92.19, 0.37, 191.61, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 78.77, 0.44, 207.35, 2, 0)
	MovementLoopAddLocation(NPC, 75.92, 0.59, 215.46, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 78.99, 0.29, 207.13, 2, 0)
	MovementLoopAddLocation(NPC, 83.36, -0.61, 201.18, 2, 0)
	MovementLoopAddLocation(NPC, 87.84, -0.83, 200.44, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 96.17, -1.41, 177.89, 2, 0)
end


