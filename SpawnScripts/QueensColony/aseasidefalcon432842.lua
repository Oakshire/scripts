--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432842.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432842.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:17:09 
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
	MovementLoopAddLocation(NPC, 90.85, -0.59, 206.59, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 94.77, -0.7, 181.94, 2, 0)
	MovementLoopAddLocation(NPC, 100.75, -0.82, 169.33, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 95.62, -0.74, 179.34, 2, 0)
	MovementLoopAddLocation(NPC, 95.52, -0.67, 182.62, 2, 0)
	MovementLoopAddLocation(NPC, 97.82, -0.55, 186.81, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 92.61, -0.65, 187.79, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 98, 0.39, 211, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 95.39, -0.94, 186.35, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 106.03, -0.79, 180.4, 2, 0)
	MovementLoopAddLocation(NPC, 109.12, -0.71, 181.18, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 106.55, -0.81, 177.96, 2, 0)
	MovementLoopAddLocation(NPC, 105.71, -0.89, 169.68, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 97.54, -0.75, 191.67, 2, 0)
end


