--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427035.lua
	Script Purpose	:	Waypoint Path for areefturtle427035.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 09:00:34 
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
	MovementLoopAddLocation(NPC, -126.92, -11.72, 33.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -125.44, -11.76, 60.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -132.85, -12.38, 46.56, 2, 0)
	MovementLoopAddLocation(NPC, -144.39, -13.3, 30.8, 2, 0)
	MovementLoopAddLocation(NPC, -148.99, -13.37, 29.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -144.31, -12.19, 31.42, 2, 0)
	MovementLoopAddLocation(NPC, -140.72, -11.64, 35.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -139.17, -11.55, 67.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -133.91, -11.73, 54.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.46, -11.75, 62.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -129.2, -11.36, 56.39, 2, 0)
	MovementLoopAddLocation(NPC, -126.93, -10.42, 54.81, 2, 0)
	MovementLoopAddLocation(NPC, -115.37, -11.65, 51.74, 2, 0)
	MovementLoopAddLocation(NPC, -109.5, -11.89, 52.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.56, -11.16, 43.98, 2, 0)
end


