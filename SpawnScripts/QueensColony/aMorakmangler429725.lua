--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler429725.lua
	Script Purpose	:	Waypoint Path for aMorakmangler429725.lua
	Script Author	:	Rylec
	Script Date	:	07-28-2020 10:33:33 
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
	MovementLoopAddLocation(NPC, 4.77, 1.96, -199.24, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 6.08, 2.02, -193.72, 2, 0)
	MovementLoopAddLocation(NPC, 4.68, 2.03, -188.87, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 6.04, 2.02, -193.95, 2, 0)
	MovementLoopAddLocation(NPC, 4.88, 1.84, -209.51, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 10.73, 2.01, -209.29, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 4.6, 2.1, -185.98, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -8.26, 2.48, -176.1, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 5.55, 1.84, -209.38, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 11.19, 1.82, -215.03, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -0.61, 1.91, -189.07, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -8.09, 2.44, -177.37, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -4.43, 2.62, -176.39, 2, math.random(14, 25))
end

