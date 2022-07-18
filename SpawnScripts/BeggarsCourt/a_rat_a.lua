--[[
	Script Name		:	SpawnScripts/BeggarsCourt/a_rat_a.lua
	Script Purpose	:	Waypoint Path for arat_a.lua
	Script Author	:	Cynnar
	Script Date		:	7/8/2018 08:07:43 AM
	Script Notes	:	<special-instructions>
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
	MovementLoopAddLocation(NPC, 4.26, 4.69, -26.44, 4, math.random(4,12))
	MovementLoopAddLocation(NPC, -9.51, 3, -26.03, 4, math.random(4,12))
	MovementLoopAddLocation(NPC, -18.88, 2.75, -18, 4, math.random(4,12))
	MovementLoopAddLocation(NPC, -1.49, 3.25, -2.6, 4, math.random(4,12))
	MovementLoopAddLocation(NPC, 10.66, 3.25, 8.17, 4, math.random(4,12))
	MovementLoopAddLocation(NPC, 41.82, 2.75, 6.72, 4, math.random(4,12))
	MovementLoopAddLocation(NPC, 59.82, 5, -18.78, 4, math.random(4,12))
	MovementLoopAddLocation(NPC, 60.27, 4, 4, math.random(4,12))
	MovementLoopAddLocation(NPC, 49.67, 2.5, 9.93, 4, math.random(4,12))
	MovementLoopAddLocation(NPC, 36.98, 2.5, 8.41, 4, math.random(4,12))
	MovementLoopAddLocation(NPC, 27.15, 5.25, -10.4, 4, math.random(4,12))
	MovementLoopAddLocation(NPC, 18.67, 5, -23.67, 4, math.random(4,12))
	MovementLoopAddLocation(NPC, -3.09, 3, -0.85, 4, math.random(4,12))
	MovementLoopAddLocation(NPC, -18.37, 2.5, -12.5, 4, math.random(4,12))
	MovementLoopAddLocation(NPC, 4.7, 4.73, -25.93, 4, math.random(4,12))
end