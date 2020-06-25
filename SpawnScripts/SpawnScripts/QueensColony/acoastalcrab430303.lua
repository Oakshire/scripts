--[[
        Script Name     :       SpawnScripts/QueensColony/acoastalcrab430303.lua
	Script Purpose	:	Waypoint Path for acoastalcrab430303.lua
	Script Author	:	Rylec
	Script Date	:	11-20-2019 06:59:26 
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
	MovementLoopAddLocation(NPC, -90.57, -8.59, 109.8, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -86.81, -8.01, 108.67, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -92.57, -8.25, 84.5, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -90.88, -7.82, 97.44, 2, 0)
	MovementLoopAddLocation(NPC, -92.89, -8.7, 103.19, 2, math.random(16, 24))
	MovementLoopAddLocation(NPC, -81.99, -8.69, 112.81, 2, math.random(16, 24))
end


