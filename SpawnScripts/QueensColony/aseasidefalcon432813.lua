--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432813.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432813.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:18:45 
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
	MovementLoopAddLocation(NPC, 171.73, 0.76, 196.82, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 170.04, 1.27, 199.53, 2, 0)
	MovementLoopAddLocation(NPC, 167.31, 1.97, 201.47, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 184.69, 1.38, 191.47, 2, 0)
	MovementLoopAddLocation(NPC, 185.51, 1.13, 188.8, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 175.49, 1.54, 183.13, 2, 0)
	MovementLoopAddLocation(NPC, 165.5, 2.16, 166.04, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 159.85, -0.21, 173.06, 2, 0)
	MovementLoopAddLocation(NPC, 158.16, -0.52, 174.49, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 143.21, -0.15, 168.32, 2, 0)
	MovementLoopAddLocation(NPC, 124.03, 0.67, 158.11, 2, 0)
	MovementLoopAddLocation(NPC, 122.26, 0.89, 155.93, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 146.6, 1.85, 179.25, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 156.33, 1.46, 184.61, 2, 0)
	MovementLoopAddLocation(NPC, 169.13, 0.97, 194.05, 2, 0)
end


