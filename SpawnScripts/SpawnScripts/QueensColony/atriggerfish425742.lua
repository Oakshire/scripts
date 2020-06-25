--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425742.lua
	Script Purpose	:	Waypoint Path for atriggerfish425742.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:59:55 
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
	MovementLoopAddLocation(NPC, -99.32, -13.7, 208.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -106.23, -12.6, 208.34, 2, 0)
	MovementLoopAddLocation(NPC, -106.74, -12.4, 214.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -85.43, -12.51, 214.01, 2, 0)
	MovementLoopAddLocation(NPC, -81.17, -12.9, 212.49, 2, 0)
	MovementLoopAddLocation(NPC, -77.96, -12.88, 213.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -97.52, -13.01, 227.5, 2, 0)
	MovementLoopAddLocation(NPC, -104.35, -12.39, 240.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -105.91, -12.44, 238.04, 2, 0)
	MovementLoopAddLocation(NPC, -114.74, -12.53, 237.93, 2, 0)
	MovementLoopAddLocation(NPC, -128.05, -12.53, 227.81, 2, 0)
	MovementLoopAddLocation(NPC, -132.19, -12.43, 227.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.99, -12.48, 202.95, 2, 0)
	MovementLoopAddLocation(NPC, -99.64, -12.55, 202.96, 2, 0)
	MovementLoopAddLocation(NPC, -93.14, -12.77, 200.01, 2, 0)
	MovementLoopAddLocation(NPC, -87.22, -12.63, 198.9, 2, 0)
	MovementLoopAddLocation(NPC, -76.41, -11.65, 193.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -73.84, -11.96, 170.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -84, -12, 174.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -84.98, -13.03, 208.78, 2, 0)
	MovementLoopAddLocation(NPC, -84.39, -12.47, 210.25, 2, 0)
end


