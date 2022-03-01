--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432942.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432942.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:33 
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
	MovementLoopAddLocation(NPC, 96.67, -0.61, 175.21, 2, math.random(10, 24))
--[[	MovementLoopAddLocation(NPC, 100.56, -0.7, 179.02, 2, 0)
	MovementLoopAddLocation(NPC, 101.03, -0.75, 192.48, 2, 0)
	MovementLoopAddLocation(NPC, 101.17, -0.79, 209.26, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 104.19, -1.24, 171.62, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 105.67, -1.02, 165.66, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 99.76, -0.76, 182.11, 2, 0)
	MovementLoopAddLocation(NPC, 93.66, -0.44, 190.06, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 101.22, -0.58, 197.05, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 92.62, -0.81, 209.36, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 93.89, -0.67, 200.21, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 96.11, -0.81, 179.21, 2, 0)
	MovementLoopAddLocation(NPC, 99.03, -0.92, 174.22, 2, 0)
--]]	MovementLoopAddLocation(NPC, 104.4, -1.04, 167.31, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 84.8, 0.65, 198.88, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 96.46, -0.42, 177.01, 2, 0)
end


