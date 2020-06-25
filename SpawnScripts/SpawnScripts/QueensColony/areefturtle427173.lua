--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427173.lua
	Script Purpose	:	Waypoint Path for areefturtle427173.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:26:30 
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
	MovementLoopAddLocation(NPC, -10.82, -10.64, -60.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -6.07, -11.33, -65.38, 2, 0)
	MovementLoopAddLocation(NPC, 0.11, -11.37, -67.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.46, -11.06, -48.37, 2, 0)
	MovementLoopAddLocation(NPC, -26.23, -11.21, -33.96, 2, 0)
	MovementLoopAddLocation(NPC, -38.17, -10.59, -17.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.83, -10.49, -22.42, 2, 0)
	MovementLoopAddLocation(NPC, -26.05, -10.51, -30.88, 2, 0)
	MovementLoopAddLocation(NPC, -18.68, -12.08, -41.06, 2, 0)
	MovementLoopAddLocation(NPC, -15.3, -11.79, -47.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.03, -11.42, -35.29, 2, 0)
	MovementLoopAddLocation(NPC, -14.08, -12.14, -18.36, 2, 0)
	MovementLoopAddLocation(NPC, -9.75, -12.74, -6.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -11.19, -12.54, -3.32, 2, 0)
	MovementLoopAddLocation(NPC, -23.6, -11.78, 7.58, 2, 0)
	MovementLoopAddLocation(NPC, -30.5, -11.79, 13.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.29, -11.35, 15.7, 2, 0)
	MovementLoopAddLocation(NPC, -40.16, -11.22, 17.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -55.95, -10.23, 17.59, 2, 0)
	MovementLoopAddLocation(NPC, -80.11, -10.56, 17.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -58.75, -10.27, -5.92, 2, 0)
	MovementLoopAddLocation(NPC, -53.8, -10.25, -14.81, 2, 0)
	MovementLoopAddLocation(NPC, -24.59, -10.28, -47.73, 2, 0)
end


