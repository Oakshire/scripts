--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427026.lua
	Script Purpose	:	Waypoint Path for areefturtle427026.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:18:05 
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
	MovementLoopAddLocation(NPC, -139.41, -12.33, 205.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.66, -12.45, 209.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.76, -13.46, 212.79, 2, 0)
	MovementLoopAddLocation(NPC, -142.8, -13.93, 216.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -146.53, -13.63, 212.89, 2, 0)
	MovementLoopAddLocation(NPC, -152.38, -13.7, 208.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -146.71, -14.66, 205.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.94, -12.24, 181.34, 2, 0)
	MovementLoopAddLocation(NPC, -128.29, -12.39, 178.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.07, -12.69, 173.89, 2, 0)
	MovementLoopAddLocation(NPC, -124.75, -12.29, 162.18, 2, 0)
	MovementLoopAddLocation(NPC, -124.97, -11.74, 149.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.89, -12.08, 160.16, 2, 0)
	MovementLoopAddLocation(NPC, -105.36, -11.71, 171.96, 2, 0)
	MovementLoopAddLocation(NPC, -101.51, -11.78, 175.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -103.33, -12.29, 177.34, 2, 0)
	MovementLoopAddLocation(NPC, -117.73, -12.53, 179.26, 2, math.random(10, 20))
end


