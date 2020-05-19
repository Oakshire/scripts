--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedgrovedeer433017.lua
	Script Purpose	:	Waypoint Path for ataintedgrovedeer433017.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:19:38 
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
	MovementLoopAddLocation(NPC, 136.91, -3.39, 152.06, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 181.92, -3.2, 150.48, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 156.13, -3.09, 197.6, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 159.1, -3.07, 197.15, 2, 0)
	MovementLoopAddLocation(NPC, 162.23, -2.77, 196.82, 2, 0)
	MovementLoopAddLocation(NPC, 168.67, -2.66, 194.52, 2, 0)
	MovementLoopAddLocation(NPC, 185.46, -3.98, 180.98, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 179.57, -3.65, 172.4, 2, 0)
	MovementLoopAddLocation(NPC, 178.71, -3.53, 169.04, 2, 0)
	MovementLoopAddLocation(NPC, 165.24, -3.54, 152, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 180.23, -3.13, 152.08, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 156.71, -3.18, 149.22, 2, 0)
	MovementLoopAddLocation(NPC, 153.06, -3.44, 149.86, 2, 0)
	MovementLoopAddLocation(NPC, 148.75, -3.62, 149.96, 2, 0)
	MovementLoopAddLocation(NPC, 144.68, -3.74, 147.86, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 143.44, -3.75, 148.6, 2, 0)
	MovementLoopAddLocation(NPC, 142.23, -3.46, 150.3, 2, 0)
	MovementLoopAddLocation(NPC, 139.89, -3.43, 152.12, 2, 0)
end


