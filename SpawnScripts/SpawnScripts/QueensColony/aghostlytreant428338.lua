--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlytreant428338.lua
	Script Purpose	:	Waypoint Path for aghostlytreant428338.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:48:19 
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
	MovementLoopAddLocation(NPC, 130.94, 1.34, -89.63, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 159.1, 0.34, -80.8, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 156.56, 1.1, -66.84, 1.5, 0)
	MovementLoopAddLocation(NPC, 159.06, 1.4, -56.52, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 168.05, 0.31, -64.19, 1.5, 0)
	MovementLoopAddLocation(NPC, 170.98, 0.3, -63.76, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 162.4, 0.6, -64.79, 1.5, 0)
	MovementLoopAddLocation(NPC, 155.45, 1.44, -63.22, 1.5, 0)
	MovementLoopAddLocation(NPC, 132.91, 1.53, -66.76, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 149.96, 0.61, -83.95, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 137.94, 1.47, -86.54, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 151.73, 0.43, -76.71, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 148.21, 1.27, -57.88, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 131.01, 1.53, -80.58, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 146.57, 1.47, -55.28, 1.5, math.random(14, 30))
end


