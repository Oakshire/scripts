--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlysapling428366.lua
	Script Purpose	:	Waypoint Path for aghostlysapling428366.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:49 
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
	MovementLoopAddLocation(NPC, 184.86, 1.37, -10.99, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 161.25, 1.41, -4.58, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 165.83, 1.39, 0.54, 2, 0)
	MovementLoopAddLocation(NPC, 183.86, 1.32, 8.79, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 168.38, 1.39, -15.47, 2, 0)
	MovementLoopAddLocation(NPC, 166.14, 1.14, -21.36, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 171.94, 1.37, -22.55, 2, 0)
	MovementLoopAddLocation(NPC, 184.01, 1.33, -30.06, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 176.67, 1.16, -36.44, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 165.62, 1.39, -6.6, 2, 0)
	MovementLoopAddLocation(NPC, 161.96, 1.41, -0.3, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 159.81, 0.6, -8.19, 2, 0)
	MovementLoopAddLocation(NPC, 147.95, 0.18, -23.36, 2, 0)
	MovementLoopAddLocation(NPC, 146.02, 0.59, -32.04, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 147.74, 0.23, -24.86, 2, 0)
	MovementLoopAddLocation(NPC, 183.98, 1.32, 12.24, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 187.81, 1.31, 18.64, 2, math.random(14, 30))
	MovementLoopAddLocation(NPC, 166.26, 1.14, -13.05, 2, math.random(14, 30))
end


