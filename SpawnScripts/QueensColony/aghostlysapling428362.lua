--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlysapling428362.lua
	Script Purpose	:	Waypoint Path for aghostlysapling428362.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:39 
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
	MovementLoopAddLocation(NPC, 182.64, 1.33, 10.65, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 160.31, 1.41, 3.35, 2, 0)
	MovementLoopAddLocation(NPC, 156.69, 1.42, 1.73, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 157.74, 1.42, -1.32, 2, 0)
	MovementLoopAddLocation(NPC, 165.61, 1.39, -7.44, 2, 0)
	MovementLoopAddLocation(NPC, 174.42, 1.18, -16, 2, 0)
	MovementLoopAddLocation(NPC, 182.94, 1.33, -26.49, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 187.16, 1.32, -24.9, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 172.06, 1.37, -29.26, 2, 0)
	MovementLoopAddLocation(NPC, 168.45, 1.39, -28.91, 2, 0)
	MovementLoopAddLocation(NPC, 164.98, 0.97, -31.27, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 167.2, 1.31, -28.19, 2, 0)
	MovementLoopAddLocation(NPC, 167.85, 1.39, -24.92, 2, 0)
	MovementLoopAddLocation(NPC, 168.54, 1.38, 0.81, 2, 0)
	MovementLoopAddLocation(NPC, 167.21, 1.38, 7.21, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 179.96, 1.34, -4.28, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 177.69, 1.28, -2.85, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 167.39, 1.39, -7.96, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 178.96, 1.34, -6.2, 2, 0)
	MovementLoopAddLocation(NPC, 182.8, 1.33, -1.23, 2, 0)
	MovementLoopAddLocation(NPC, 183.59, 1.33, 4.28, 2, 0)
end

