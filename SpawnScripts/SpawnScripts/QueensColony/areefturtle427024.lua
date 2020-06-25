--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427024.lua
	Script Purpose	:	Waypoint Path for areefturtle427024.lua
	Script Author	:	Rylec
	Script Date	:	11-08-2019 06:16:07 
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
	MovementLoopAddLocation(NPC, -126.87, -11.74, 164.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.19, -12.33, 163.9, 2, 0)
	MovementLoopAddLocation(NPC, -131.32, -12.5, 160.77, 2, 0)
	MovementLoopAddLocation(NPC, -134.28, -12.46, 157.86, 2, 0)
	MovementLoopAddLocation(NPC, -136.24, -12.5, 157.59, 2, 0)
	MovementLoopAddLocation(NPC, -139.39, -12.58, 153.32, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.94, -14.59, 150.82, 2, 0)
	MovementLoopAddLocation(NPC, -145.34, -14.68, 152.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -145.62, -13.26, 157.53, 2, 0)
	MovementLoopAddLocation(NPC, -148.44, -13.59, 164.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -146.67, -14.8, 171.89, 2, 0)
	MovementLoopAddLocation(NPC, -149.44, -14.77, 172.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -148.28, -13.96, 164.71, 2, 0)
	MovementLoopAddLocation(NPC, -140.93, -13.24, 152.5, 2, 0)
	MovementLoopAddLocation(NPC, -139.91, -13.33, 147.9, 2, 0)
	MovementLoopAddLocation(NPC, -121.24, -11.54, 148.05, 2, 0)
	MovementLoopAddLocation(NPC, -117.9, -11.77, 149.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.56, -12.05, 150.26, 2, 0)
	MovementLoopAddLocation(NPC, -129.13, -12.29, 156.07, 2, 0)
	MovementLoopAddLocation(NPC, -136.24, -14.28, 161.69, 2, 0)
	MovementLoopAddLocation(NPC, -143.99, -14.25, 166.53, 2, 0)
	MovementLoopAddLocation(NPC, -146.55, -14.74, 170.43, 2, 0)
	MovementLoopAddLocation(NPC, -149.12, -14.89, 168.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -143.78, -14.74, 168.75, 2, 0)
	MovementLoopAddLocation(NPC, -133.37, -14.27, 164.46, 2, 0)
	MovementLoopAddLocation(NPC, -131.34, -13.83, 165.16, 2, 0)
	MovementLoopAddLocation(NPC, -129.45, -13.79, 164.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -131.89, -13.28, 162.98, 2, 0)
	MovementLoopAddLocation(NPC, -144.72, -14.17, 146.42, 2, 0)
	MovementLoopAddLocation(NPC, -147.97, -14.81, 132.6, 2, 0)
	MovementLoopAddLocation(NPC, -152.6, -14.88, 129.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -146.52, -14.21, 140.64, 2, 0)
	MovementLoopAddLocation(NPC, -136.67, -12.41, 158.24, 2, 0)
	MovementLoopAddLocation(NPC, -130.29, -12.25, 159.92, 2, 0)
	MovementLoopAddLocation(NPC, -128.93, -11.65, 161.22, 2, 0)
end

