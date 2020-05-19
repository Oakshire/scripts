--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427559.lua
	Script Purpose	:	Waypoint Path for aneedlefang427559.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:46:50 
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
	MovementLoopAddLocation(NPC, -83.84, -11.69, 195.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -106.63, -13.41, 198.93, 2, 0)
	MovementLoopAddLocation(NPC, -114.62, -13.75, 199.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -113.23, -12.7, 201.07, 2, 0)
	MovementLoopAddLocation(NPC, -109.39, -12.53, 210.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -106.22, -12.23, 196.54, 2, 0)
	MovementLoopAddLocation(NPC, -103.3, -12.46, 192.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -95.86, -13.13, 220.18, 2, 0)
	MovementLoopAddLocation(NPC, -88.57, -13.73, 227.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -115.49, -14.86, 225.84, 2, 0)
	MovementLoopAddLocation(NPC, -124.87, -15.07, 225.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -109.52, -15.12, 201.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.2, -13.84, 229.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -94.08, -13.1, 207.78, 2, 0)
	MovementLoopAddLocation(NPC, -88.47, -12.08, 199.35, 2, 0)
	MovementLoopAddLocation(NPC, -81.55, -12.06, 176.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -63.99, -11.98, 180.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -53.44, -11.89, 185.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -72.43, -11.16, 190.67, 2, 0)
end


