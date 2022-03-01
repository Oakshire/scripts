--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedfalcon428937.lua
	Script Purpose	:	Waypoint Path for ataintedfalcon428937.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:22 
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
	MovementLoopAddLocation(NPC, 136.26, -0.44, 145.84, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 135.22, 0.79, 159.25, 2, 0)
	MovementLoopAddLocation(NPC, 132.54, 1.17, 164.58, 2, 0)
	MovementLoopAddLocation(NPC, 132.16, 1.27, 166.74, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 146.63, 2.56, 187.5, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 145.38, 1.04, 169.78, 2, 0)
	MovementLoopAddLocation(NPC, 151.36, -0.35, 143.07, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 178.06, 0.76, 150.17, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 166.36, -0.44, 166.07, 2, 0)
	MovementLoopAddLocation(NPC, 163.54, -0.97, 168.29, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 173.98, -0.37, 162.34, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 176.01, -0.98, 170.23, 2, 0)
	MovementLoopAddLocation(NPC, 177.67, -1.18, 174.78, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 176.13, -1.09, 175.67, 2, 0)
	MovementLoopAddLocation(NPC, 141.31, 2.21, 187.17, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 141.94, -0.37, 148.4, 2, 0)
	MovementLoopAddLocation(NPC, 144.3, -0.59, 145.74, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 160.33, -0.65, 143.75, 2, 0)
	MovementLoopAddLocation(NPC, 165.77, -0.72, 141.54, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 159.83, -0.61, 143.99, 2, 0)
	MovementLoopAddLocation(NPC, 151.94, -0.54, 145.66, 2, 0)
end

