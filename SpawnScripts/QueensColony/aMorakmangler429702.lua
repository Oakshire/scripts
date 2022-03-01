--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler429702.lua
	Script Purpose	:	Waypoint Path for aMorakmangler429702.lua
	Script Author	:	Rylec
	Script Date	:	07-28-2020 10:33:39 
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
	MovementLoopAddLocation(NPC, 6.86, 1.84, -211.02, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -3.03, 2.5, -181.58, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -0.46, 2.56, -184.99, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -1, 1.99, -190.9, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -0.52, 2.6, -182.73, 2, 0)
	MovementLoopAddLocation(NPC, -4.18, 2.62, -175.2, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 4.92, 1.85, -212.33, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 9.03, 2.01, -206.22, 2, math.random(14, 25))
end


