--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillinvader431146.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillinvader431146.lua
	Script Author	:	Rylec
	Script Date	:	11-19-2020 05:12:27 
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
	MovementLoopAddLocation(NPC, 174, -4.07, 207.79, 2)
	MovementLoopAddLocation(NPC, 159.83, -3.62, 204.15, 2)
	MovementLoopAddLocation(NPC, 149.76, -3.82, 199, 2)
	MovementLoopAddLocation(NPC, 146.95, -3.92, 198.19, 2)
	MovementLoopAddLocation(NPC, 143.14, -4, 196.05, 2)
	MovementLoopAddLocation(NPC, 133.74, -4.06, 193.57, 2)
	MovementLoopAddLocation(NPC, 79.71, -4.33, 185.89, 2)
	MovementLoopAddLocation(NPC, 67.56, -4.17, 189.22, 2)
	MovementLoopAddLocation(NPC, 65.63, -4, 188.88, 2)
	MovementLoopAddLocation(NPC, 61.5, -4, 183.71, 2)
	MovementLoopAddLocation(NPC, 76.53, -4.32, 198.53, 2)
	MovementLoopAddLocation(NPC, 75.82, -4.48, 180.13, 2)
	MovementLoopAddLocation(NPC, 68.99, -4.49, 177.68, 2, 0, "waypointsLoop")
end

function waypointsLoop(NPC)
	MovementLoopAddLocation(NPC, 60.48, -4, 189.65, 2, 0)
	MovementLoopAddLocation(NPC, 72.34, -4.3, 169.86, 2, 0)
	MovementLoopAddLocation(NPC, 67.34, -4.28, 154.56, 2, 0)
	MovementLoopAddLocation(NPC, 71.9, -4.3, 170.88, 2, 0)
end