--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432816.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432816.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:53 
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
	MovementLoopAddLocation(NPC, 165.39, 1.11, 184.85, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 170.23, 1.39, 178.7, 2, 0)
	MovementLoopAddLocation(NPC, 181.47, 1.92, 154, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 171.38, 2.08, 166.83, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 176.14, 2.36, 192.4, 2, 0)
	MovementLoopAddLocation(NPC, 177.5, 2.59, 193.75, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.69, 2.29, 192.04, 2, 0)
	MovementLoopAddLocation(NPC, 147.98, 2.01, 193.08, 2, 0)
	MovementLoopAddLocation(NPC, 142.02, 1.89, 192.82, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 140.34, 1.06, 174.72, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 135.48, 1, 176.06, 2, 0)
	MovementLoopAddLocation(NPC, 132.62, 1.05, 178.48, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 135.88, 1.09, 172.28, 2, 0)
	MovementLoopAddLocation(NPC, 136.08, 1.15, 160.54, 2, 0)
	MovementLoopAddLocation(NPC, 141.05, 1.19, 151.91, 2, 0)
	MovementLoopAddLocation(NPC, 142.37, 1.25, 147.39, 2, 0)
	MovementLoopAddLocation(NPC, 146.06, 1.28, 142.38, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 136.22, 2.05, 168.32, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 142.62, 1.24, 173.41, 2, 0)
	MovementLoopAddLocation(NPC, 143.8, 0.36, 177.93, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 146.53, 0.57, 178.35, 2, 0)
	MovementLoopAddLocation(NPC, 156.56, 0.87, 184.59, 2, 0)
end


