--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432807.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432807.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:28 
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
	MovementLoopAddLocation(NPC, 146.51, 1.23, 133.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 161.67, 1.47, 150.17, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 130.11, -0.66, 162.35, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 143.66, -0.79, 162.78, 2, 0)
	MovementLoopAddLocation(NPC, 150.17, -0.83, 166.02, 2, 0)
	MovementLoopAddLocation(NPC, 156.14, -0.99, 166.55, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 144.69, -0.42, 167.54, 2, 0)
	MovementLoopAddLocation(NPC, 139.82, 0.25, 170.32, 2, 0)
	MovementLoopAddLocation(NPC, 131.52, 0.34, 169.69, 2, 0)
	MovementLoopAddLocation(NPC, 125.84, 0.92, 167.12, 2, 0)
	MovementLoopAddLocation(NPC, 122.41, 1.08, 166.08, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 123.74, -0.06, 176.12, 2, 0)
	MovementLoopAddLocation(NPC, 126.29, -0.97, 180.82, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 156.59, -1.02, 179.97, 2, 0)
	MovementLoopAddLocation(NPC, 158.35, -1.08, 178.62, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 159.11, 0.88, 145.43, 2, 0)
	MovementLoopAddLocation(NPC, 160.23, 1.04, 143.49, 2, math.random(10, 24))
end


