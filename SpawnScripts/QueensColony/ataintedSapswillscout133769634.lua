--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillscout133769634.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillscout133769634.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:32:13 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 190.82, -0.67, -151.59, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 191.79, -0.68, -137.16, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 202.04, -0.71, -155.91, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 185.37, -0.65, -144.36, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 196.93, -0.69, -171.29, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 195.48, -0.68, -173.33, 2, 0)
	MovementLoopAddLocation(NPC, 191.21, -0.66, -174.9, 2, 0)
	MovementLoopAddLocation(NPC, 179.27, -0.62, -174.86, 2, 0)
	MovementLoopAddLocation(NPC, 175.37, -0.61, -172.7, 2, math.random(14, 28))
	MovementLoopAddLocation(NPC, 194.2, -0.68, -144.27, 2, math.random(14, 28))
end

