--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlysapling428369.lua
	Script Purpose	:	Waypoint Path for aghostlysapling428369.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:57 
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
	MovementLoopAddLocation(NPC, 144.3, 0.74, -9.87, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 152.87, 0.17, -5.18, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 155.8, 0.16, -9.3, 2, 0)
	MovementLoopAddLocation(NPC, 167.46, 1.34, -18.16, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 184.78, 1.35, -14.79, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 168.13, 1.39, -9.36, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 173.21, 1.16, 8.93, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 174.99, 1.16, -6.71, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 163.24, 1.4, -7.66, 2, 0)
	MovementLoopAddLocation(NPC, 157.79, 0.16, -9.39, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 152.88, 1.03, -44.98, 2, 0)
	MovementLoopAddLocation(NPC, 155.3, 1.23, -53.81, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 147.47, 0.27, -36.73, 2, 0)
end
