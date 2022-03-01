--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432821.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432821.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:19:08 
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
	MovementLoopAddLocation(NPC, 130.53, 0.51, 170.27, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 137.22, 0.59, 156, 2, 0)
	MovementLoopAddLocation(NPC, 148.4, 0.62, 139.6, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 160.53, 1.58, 145.48, 2, 0)
	MovementLoopAddLocation(NPC, 164.28, 1.98, 147.72, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 184.71, 2.18, 160.17, 2, 0)
	MovementLoopAddLocation(NPC, 189.84, 2.2, 166.88, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 183.06, 1.97, 168.63, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 157.7, 1.07, 195.33, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 171.51, -0.54, 164.72, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 168.14, -0.58, 173.78, 2, 0)
	MovementLoopAddLocation(NPC, 155.58, -0.71, 189.41, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 163.61, -0.82, 170.81, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 154.24, -1.25, 154.27, 2, 0)
	MovementLoopAddLocation(NPC, 152.83, -1.33, 152.92, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 143.79, -0.06, 165.19, 2, 0)
end


