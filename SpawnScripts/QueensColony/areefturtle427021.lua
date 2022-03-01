--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427021.lua
	Script Purpose	:	Waypoint Path for areefturtle427021.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:14:37 
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
	MovementLoopAddLocation(NPC, -128.54, -13.55, 186.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.67, -14.42, 183.43, 2, 0)
	MovementLoopAddLocation(NPC, -123.3, -14.85, 179.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.89, -13.51, 177.19, 2, 0)
	MovementLoopAddLocation(NPC, -141.13, -13.58, 175.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.93, -14.04, 160.58, 2, 0)
	MovementLoopAddLocation(NPC, -144.81, -13.66, 149.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.35, -12.13, 153.45, 2, 0)
	MovementLoopAddLocation(NPC, -119.68, -11.8, 157.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -126.69, -12.33, 159.45, 2, 0)
	MovementLoopAddLocation(NPC, -146.62, -12.36, 175.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.09, -13.31, 176.37, 2, 0)
	MovementLoopAddLocation(NPC, -124.24, -14.79, 178.21, 2, 0)
	MovementLoopAddLocation(NPC, -123.14, -14.86, 179.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.33, -14.12, 182.63, 2, 0)
	MovementLoopAddLocation(NPC, -131.23, -13.27, 185.15, 2, 0)
	MovementLoopAddLocation(NPC, -130.39, -12.38, 209.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.15, -13.43, 206.66, 2, 0)
	MovementLoopAddLocation(NPC, -148.52, -14.5, 194.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.67, -14.69, 209.18, 2, math.random(10, 20))
end


