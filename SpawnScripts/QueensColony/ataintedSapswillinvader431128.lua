--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedSapswillinvader431128.lua
	Script Purpose	:	Waypoint Path for ataintedSapswillinvader431128.lua
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
	MovementLoopAddLocation(NPC, 181.1, -3.8, 177.94, 2)
	MovementLoopAddLocation(NPC, 133.92, -3.43, 179.71, 2)
	MovementLoopAddLocation(NPC, 124.06, -3.74, 179.89, 2)
	MovementLoopAddLocation(NPC, 118.85, -3.8, 179.04, 2)
	MovementLoopAddLocation(NPC, 103.77, -4, 180.18, 2)
	MovementLoopAddLocation(NPC, 99.86, -4, 180.98, 2)
	MovementLoopAddLocation(NPC, 93.8, -4.19, 181.4, 2)
	MovementLoopAddLocation(NPC, 91.38, -4.29, 181.01, 2)
	MovementLoopAddLocation(NPC, 87.87, -4.36, 181.06, 2)
	MovementLoopAddLocation(NPC, 83.06, -4.34, 180.1, 2)
	MovementLoopAddLocation(NPC, 75.82, -4.48, 180.13, 2)
	MovementLoopAddLocation(NPC, 68.99, -4.49, 177.68, 2, 0, "waypointsLoop")
end

function waypointsLoop(NPC)
	MovementLoopAddLocation(NPC, 60.48, -4, 189.65, 2, 0)
	MovementLoopAddLocation(NPC, 72.34, -4.3, 169.86, 2, 0)
	MovementLoopAddLocation(NPC, 67.34, -4.28, 154.56, 2, 0)
	MovementLoopAddLocation(NPC, 71.9, -4.3, 170.88, 2, 0)
end