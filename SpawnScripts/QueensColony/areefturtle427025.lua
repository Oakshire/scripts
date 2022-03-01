--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427025.lua
	Script Purpose	:	Waypoint Path for areefturtle427025.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:17:39 
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
	MovementLoopAddLocation(NPC, -146.67, -12.39, 194.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -126.12, -14.85, 195.67, 2, 0)
	MovementLoopAddLocation(NPC, -123.22, -14.76, 194.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.36, -12.18, 194.34, 2, 0)
	MovementLoopAddLocation(NPC, -148.27, -12.41, 194.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -125.76, -11.31, 145.38, 2, 0)
	MovementLoopAddLocation(NPC, -103.77, -11.65, 110.5, 2, 0)
	MovementLoopAddLocation(NPC, -103.35, -11.83, 105.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -103.02, -11.34, 112.45, 2, 0)
	MovementLoopAddLocation(NPC, -99.89, -11.11, 114.84, 2, 0)
	MovementLoopAddLocation(NPC, -87.71, -11.02, 127.29, 2, 0)
	MovementLoopAddLocation(NPC, -81.82, -11.75, 138.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.98, -11.72, 131.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -126.87, -11.32, 132.28, 2, 0)
	MovementLoopAddLocation(NPC, -131.17, -12.31, 131.85, 2, 0)
	MovementLoopAddLocation(NPC, -142.17, -13.27, 131.5, 2, 0)
	MovementLoopAddLocation(NPC, -143.28, -13.78, 131.04, 2, 0)
	MovementLoopAddLocation(NPC, -144.88, -13.65, 133.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.94, -14.3, 147.92, 2, 0)
	MovementLoopAddLocation(NPC, -144.8, -14.73, 153.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.37, -13.57, 162.41, 2, 0)
	MovementLoopAddLocation(NPC, -141.9, -12.23, 182.65, 2, 0)
	MovementLoopAddLocation(NPC, -142.99, -12.3, 190.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134, -13.45, 184.01, 2, 0)
	MovementLoopAddLocation(NPC, -129.05, -14.4, 184.21, 2, 0)
	MovementLoopAddLocation(NPC, -126.8, -14.85, 186.31, 2, 0)
	MovementLoopAddLocation(NPC, -126.99, -14.8, 187.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.72, -14.74, 212.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -147.77, -13.27, 197.93, 2, 0)
	MovementLoopAddLocation(NPC, -147.82, -12.48, 195.27, 2, 0)
end

