--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425473.lua
	Script Purpose	:	Waypoint Path for ashoalglider425473.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:19:22 
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
	MovementLoopAddLocation(NPC, -8.06, -11.73, -42.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.13, -12.01, -43.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.47, -11.68, -51.71, 2, 0)
	MovementLoopAddLocation(NPC, 14.49, -11.65, -55.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.25, -12.57, -68.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.63, -11.83, -55.75, 2, 0)
	MovementLoopAddLocation(NPC, 1.86, -11.77, -48.94, 2, 0)
	MovementLoopAddLocation(NPC, 2.23, -11.51, -44.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.2, -11.72, -24.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.93, -11.76, -19.33, 2, 0)
	MovementLoopAddLocation(NPC, -20.57, -11.54, -14.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.13, -11.1, -18.4, 2, 0)
	MovementLoopAddLocation(NPC, -50.27, -10.7, -29.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.85, -11.43, -35.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.6, -11.04, -53.73, 2, 0)
	MovementLoopAddLocation(NPC, -10.72, -10.7, -67.89, 2, math.random(10, 20))
end


