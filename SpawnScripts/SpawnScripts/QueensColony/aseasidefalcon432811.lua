--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432811.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432811.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:39 
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
	MovementLoopAddLocation(NPC, 187.37, -0.57, 172.76, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 184.72, 0.25, 177.34, 2, 0)
	MovementLoopAddLocation(NPC, 180.93, 1.08, 179.06, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 187.22, 1.67, 188, 2, 0)
	MovementLoopAddLocation(NPC, 184.74, 2.21, 191.78, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 174.8, 1.52, 196.67, 2, 0)
	MovementLoopAddLocation(NPC, 165.31, 0.97, 199.21, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 167.5, -0.38, 184.05, 2, 0)
	MovementLoopAddLocation(NPC, 166.89, -0.59, 183.2, 2, 0)
	MovementLoopAddLocation(NPC, 165.5, -0.71, 182.78, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 157.75, 0.98, 176.26, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.97, 1.02, 147.2, 2, 0)
	MovementLoopAddLocation(NPC, 152.22, 1.07, 142.91, 2, 0)
	MovementLoopAddLocation(NPC, 153.51, 1.11, 141.67, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 185.14, 2.04, 156.49, 2, 0)
	MovementLoopAddLocation(NPC, 186.81, 2.06, 156.59, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 161.69, 1.18, 184.95, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 170.19, 0.22, 184.07, 2, 0)
end


