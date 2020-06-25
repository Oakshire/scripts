--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427583.lua
	Script Purpose	:	Waypoint Path for aneedlefang427583.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:46:01 
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
	MovementLoopAddLocation(NPC, -132.35, -14.98, 231.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.3, -14.01, 235.13, 2, 0)
	MovementLoopAddLocation(NPC, -121.01, -13.92, 239.19, 2, 0)
	MovementLoopAddLocation(NPC, -100.69, -14.09, 239.95, 2, 0)
	MovementLoopAddLocation(NPC, -99.38, -14.03, 238.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -97.36, -13.09, 232.61, 2, 0)
	MovementLoopAddLocation(NPC, -97.63, -13.13, 229.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.39, -13.02, 223.62, 2, 0)
	MovementLoopAddLocation(NPC, -110.44, -14.89, 218.12, 2, 0)
	MovementLoopAddLocation(NPC, -114.65, -15.15, 214.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -107.48, -12.88, 222.67, 2, 0)
	MovementLoopAddLocation(NPC, -101.94, -12.54, 238.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.8, -12.91, 230.93, 2, 0)
	MovementLoopAddLocation(NPC, -99.17, -13.75, 222.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.84, -13.05, 225.79, 2, 0)
	MovementLoopAddLocation(NPC, -104.7, -12.48, 235.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -93.53, -13.77, 235.2, 2, 0)
	MovementLoopAddLocation(NPC, -87.83, -13.15, 233.26, 2, 0)
	MovementLoopAddLocation(NPC, -76.36, -12.88, 227.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -76.74, -11.84, 223.35, 2, 0)
	MovementLoopAddLocation(NPC, -75.35, -11.77, 221.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -68.59, -10.55, 208.82, 2, 0)
	MovementLoopAddLocation(NPC, -68.34, -10.45, 205.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -75.78, -10.45, 207.51, 2, 0)
	MovementLoopAddLocation(NPC, -99.42, -12.23, 217.03, 2, 0)
	MovementLoopAddLocation(NPC, -111.63, -13, 224.64, 2, 0)
	MovementLoopAddLocation(NPC, -129.04, -13.68, 230.18, 2, 0)
	MovementLoopAddLocation(NPC, -137.61, -13.81, 233.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.98, -14.69, 232.35, 2, 0)
end
