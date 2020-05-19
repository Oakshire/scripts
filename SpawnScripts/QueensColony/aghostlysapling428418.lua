--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlysapling428418.lua
	Script Purpose	:	Waypoint Path for aghostlysapling428418.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:36 
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
	MovementLoopAddLocation(NPC, 169.66, 1.17, 17.13, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 187.4, 1.41, -8.25, 2, 0)
	MovementLoopAddLocation(NPC, 188.21, 1.49, -12.34, 2, 0)
	MovementLoopAddLocation(NPC, 185.91, 1.32, -27, 2, 0)
	MovementLoopAddLocation(NPC, 186.48, 1.32, -32.98, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 186.58, 1.32, -26.79, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 187.19, 1.32, -18.84, 2, 0)
	MovementLoopAddLocation(NPC, 188.18, 1.51, -11.23, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 187.72, 1.44, -13.76, 2, 0)
	MovementLoopAddLocation(NPC, 183.13, 1.33, -17.96, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 166.11, 1.39, -9.51, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 165.86, 1.39, -7.58, 2, 0)
	MovementLoopAddLocation(NPC, 151.3, 0.18, 1.51, 2, 0)
	MovementLoopAddLocation(NPC, 149.35, 0.18, 5.37, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 159.01, 1.35, -4.97, 2, 0)
	MovementLoopAddLocation(NPC, 167.24, 1.3, -18.11, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 180.07, 1.3, -16.22, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 170.82, 1.38, -11.21, 2, math.random(14, 30))
end


