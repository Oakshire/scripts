--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledgrovedeer1587539.lua
	Script Purpose	:	Waypoint Path for adefiledgrovedeer1587539.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:41:32 
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
	MovementLoopAddLocation(NPC, 143.33, 1.46, 70.28, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 133.83, 1.18, 59.95, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 141.53, 1.27, 65.32, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 133.57, 1.29, 86.31, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 142.08, 1.46, 88.08, 2, 0)
	MovementLoopAddLocation(NPC, 169.12, 1.36, 86.42, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 171.79, 1.35, 83.92, 2, 0)
	MovementLoopAddLocation(NPC, 178.94, 1.33, 72.99, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 168.99, 1.37, 49.5, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 178.46, 1.34, 28.27, 2, 0)
	MovementLoopAddLocation(NPC, 179.48, 1.34, 19.99, 2, 0)
	MovementLoopAddLocation(NPC, 182.25, 1.33, 11.57, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 176.76, 1.34, 24.34, 2, 0)
	MovementLoopAddLocation(NPC, 154.97, 1.42, 51.92, 2, math.random(10, 24))
end


