--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlysapling428361.lua
	Script Purpose	:	Waypoint Path for aghostlysapling428361.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:29 
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
	MovementLoopAddLocation(NPC, 148.14, 0.19, 0.45, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 155.82, 1.4, 0.06, 2, 0)
	MovementLoopAddLocation(NPC, 159.06, 1.42, 1.6, 2, 0)
	MovementLoopAddLocation(NPC, 167.38, 1.39, 0.84, 2, 0)
	MovementLoopAddLocation(NPC, 169.75, 1.38, -0.88, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 163.43, 1.4, -2.02, 2, 0)
	MovementLoopAddLocation(NPC, 154.47, 0.17, -4.89, 2, 0)
	MovementLoopAddLocation(NPC, 150.52, 0.15, -8.07, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 149.39, 0.04, -12.96, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 157.93, -0.09, -24.85, 2, 0)
	MovementLoopAddLocation(NPC, 160.6, 0.29, -27.72, 2, 0)
	MovementLoopAddLocation(NPC, 161.33, 0.41, -29.43, 2, 0)
	MovementLoopAddLocation(NPC, 161.18, 0.39, -31.64, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 161.06, 0.37, -29.02, 2, 0)
	MovementLoopAddLocation(NPC, 159.58, 0.15, -26.73, 2, 0)
	MovementLoopAddLocation(NPC, 148.32, 0.13, -21.5, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 160.4, 0.26, -24, 2, 0)
	MovementLoopAddLocation(NPC, 163.89, 0.79, -23.13, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 186.06, 1.32, -29.75, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 165, 1.4, -6.4, 2, 4)
	MovementLoopAddLocation(NPC, 185.12, 1.32, -4.55, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 165.28, 1.39, -1.15, 2, 0)
	MovementLoopAddLocation(NPC, 159.7, 1.41, 1.58, 2, 0)
	MovementLoopAddLocation(NPC, 157.51, 1.42, 1.51, 2, 0)
end

