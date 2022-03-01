--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlysapling428382.lua
	Script Purpose	:	Waypoint Path for aghostlysapling428382.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:31 
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
	MovementLoopAddLocation(NPC, 148.27, 0.19, 5.48, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 161.14, 1.41, 6.9, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 161.27, 1.41, -6.71, 2, 0)
	MovementLoopAddLocation(NPC, 159.39, 0.1, -16.25, 2, 0)
	MovementLoopAddLocation(NPC, 147.02, 0.37, -38.22, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 159.65, 0.13, -16.86, 2, 0)
	MovementLoopAddLocation(NPC, 161.31, 0.37, -11.19, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 171.81, 1.37, -21.28, 2, 0)
	MovementLoopAddLocation(NPC, 174.65, 1.36, -23.67, 2, 0)
	MovementLoopAddLocation(NPC, 175.62, 1.36, -26.5, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 172.36, 1.37, -12.57, 2, 0)
	MovementLoopAddLocation(NPC, 163.31, 1.4, 3.59, 2, 0)
	MovementLoopAddLocation(NPC, 161.35, 1.41, 10.37, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 167.2, 1.38, 7.18, 2, math.random(14, 30))
end


