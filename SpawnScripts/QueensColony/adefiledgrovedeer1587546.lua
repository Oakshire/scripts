--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledgrovedeer1587546.lua
	Script Purpose	:	Waypoint Path for defiled_34_08.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:42:21 
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
	MovementLoopAddLocation(NPC, 188.39, 1.3, 33.2, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 155.22, 1.43, 25.6, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 143.53, 1.47, 38.62, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 153.36, 1.43, 28.06, 2, 0)
	MovementLoopAddLocation(NPC, 158.09, 1.42, 19.83, 2, 0)
	MovementLoopAddLocation(NPC, 159.71, 1.41, 14.57, 2, 0)
	MovementLoopAddLocation(NPC, 163.92, 1.4, 7.95, 2, 0)
	MovementLoopAddLocation(NPC, 166.77, 1.39, 7.23, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 191.01, 1.29, 25.89, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 189.37, 1.75, 16.47, 2, 0)
	MovementLoopAddLocation(NPC, 189.83, 1.9, 12.23, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 163.14, 1.4, 1.83, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 180.67, 1.34, -0.46, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 181.17, 1.33, 0.95, 2, 0)
	MovementLoopAddLocation(NPC, 180.9, 1.34, 4.32, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 185.06, 1.32, 15.37, 2, 0)
	MovementLoopAddLocation(NPC, 185.43, 1.32, 21.96, 2, 0)
end


