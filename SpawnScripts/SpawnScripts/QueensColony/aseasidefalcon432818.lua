--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432818.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432818.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:59 
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
	MovementLoopAddLocation(NPC, 144.24, 0.98, 170.33, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 143.11, 1.05, 154.59, 2, 0)
	MovementLoopAddLocation(NPC, 138.15, 1.12, 141.05, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 155.77, 1.99, 133.56, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 163.95, 2.37, 141.77, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 160.08, 1.05, 152.46, 2, 0)
	MovementLoopAddLocation(NPC, 154.13, -0.43, 177.05, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 143.77, 0.15, 172.19, 2, 0)
	MovementLoopAddLocation(NPC, 135.88, 1.15, 159.52, 2, 0)
	MovementLoopAddLocation(NPC, 135.12, 1.71, 157.57, 2, 0)
	MovementLoopAddLocation(NPC, 134.02, 1.99, 153.92, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 132.97, 2.15, 152.43, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 142.85, 1.06, 156.03, 2, 0)
	MovementLoopAddLocation(NPC, 161.56, -0.59, 170.41, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.82, 0.99, 164.01, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 146.91, 0.99, 167.15, 2, 0)
end


