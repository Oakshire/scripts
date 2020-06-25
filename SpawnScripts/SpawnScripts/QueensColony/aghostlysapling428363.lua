--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlysapling428363.lua
	Script Purpose	:	Waypoint Path for aghostlysapling428363.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:41 
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
	MovementLoopAddLocation(NPC, 175.46, 1.2, 3.5, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 186.35, 1.32, -32.38, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 181.37, 1.34, -9.52, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 169.06, 1.38, -14.05, 2, 0)
	MovementLoopAddLocation(NPC, 154.23, -0.38, -22.96, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 161.73, 0.44, -14, 2, 0)
	MovementLoopAddLocation(NPC, 163.55, 1.4, -7.89, 2, 0)
	MovementLoopAddLocation(NPC, 174.24, 1.16, 5.3, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 165.35, 1.39, 0.02, 2, 0)
	MovementLoopAddLocation(NPC, 159.95, 0.73, -7.92, 2, 0)
	MovementLoopAddLocation(NPC, 150.68, -0.14, -13.02, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 151.9, -0.37, -15.46, 2, 0)
	MovementLoopAddLocation(NPC, 170.66, 1.38, -24.78, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 168.97, 1.39, -24.26, 2, 0)
	MovementLoopAddLocation(NPC, 165, 0.96, -21.47, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 163.94, 0.8, -22.78, 2, 0)
	MovementLoopAddLocation(NPC, 158.33, 0.04, -25.94, 2, 0)
	MovementLoopAddLocation(NPC, 151.88, 0.02, -28.21, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 156.79, -0.24, -24.05, 2, 0)
end


