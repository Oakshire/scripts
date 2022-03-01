--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427562.lua
	Script Purpose	:	Waypoint Path for aneedlefang427562.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 06:00:04 
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
	MovementLoopAddLocation(NPC, -96.67, -13, 185.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.26, -13.75, 221.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -119.7, -13.7, 212.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -93.55, -12.46, 212.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -88.58, -12.94, 222.68, 2, 0)
	MovementLoopAddLocation(NPC, -85.19, -14.54, 228.5, 2, 0)
	MovementLoopAddLocation(NPC, -83.51, -15.01, 234.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -95, -14, 230.29, 2, 0)
	MovementLoopAddLocation(NPC, -104.25, -13.72, 212.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -109.35, -13.79, 237.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -109.39, -12.37, 229.77, 2, 0)
	MovementLoopAddLocation(NPC, -110.84, -12.56, 221.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -114.88, -15.1, 230.35, 2, 0)
	MovementLoopAddLocation(NPC, -119.07, -15.15, 232.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.02, -12.33, 226.62, 2, 0)
	MovementLoopAddLocation(NPC, -112.49, -12.44, 219.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.47, -12.16, 231.37, 2, 0)
	MovementLoopAddLocation(NPC, -106.55, -12.39, 238.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.16, -12.39, 210.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.84, -11.99, 192.16, 2, 0)
	MovementLoopAddLocation(NPC, -104.1, -12.16, 191.99, 2, 0)
	MovementLoopAddLocation(NPC, -100.22, -13.26, 185.97, 2, 0)
end


