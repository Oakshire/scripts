--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer1587720.lua
	Script Purpose	:	Waypoint Path for amorakdevourer1587720.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:10:10 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        local level = GetLevel(NPC)
        if level == 4 then
            SpawnSet(NPC, "size", "28.8")
        end
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 232.82, -1.14, -120.21, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 247.2, 0.1, -82.83, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 251.36, 0, -83.53, 2, 0)
	MovementLoopAddLocation(NPC, 260, -1.02, -78.61, 2, 0)
	MovementLoopAddLocation(NPC, 276.3, -1.57, -64.24, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 274.69, -1.57, -59.35, 2, 0)
	MovementLoopAddLocation(NPC, 269.09, -1.71, -56.06, 2, 0)
	MovementLoopAddLocation(NPC, 263.23, -1.74, -54.6, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 261.8, -1.52, -63.9, 2, 0)
	MovementLoopAddLocation(NPC, 256.15, -1.5, -73, 2, 0)
	MovementLoopAddLocation(NPC, 254.34, -0.65, -79.64, 2, 0)
	MovementLoopAddLocation(NPC, 252.27, -0.35, -84.44, 2, 0)
	MovementLoopAddLocation(NPC, 249.72, -0.9, -93, 2, 0)
	MovementLoopAddLocation(NPC, 242.15, -1, -100.26, 2, 0)
	MovementLoopAddLocation(NPC, 239.31, -1.05, -105.29, 2, 0)
	MovementLoopAddLocation(NPC, 238.89, -1.33, -111.96, 2, 0)
	MovementLoopAddLocation(NPC, 240.79, -0.76, -116.66, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 242.52, -0.89, -132.68, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 234.43, -0.83, -130.51, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 237.02, -1.11, -124.52, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 238.66, -0.85, -133.28, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 239.5, -0.85, -127.82, 2, 0)
	MovementLoopAddLocation(NPC, 239.04, -1, -107.26, 2, 0)
	MovementLoopAddLocation(NPC, 240.18, -0.92, -103.32, 2, 0)
	MovementLoopAddLocation(NPC, 245.27, -0.88, -94.29, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 247.92, -0.58, -88.3, 2, 0)
	MovementLoopAddLocation(NPC, 255.37, -1.19, -76.51, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 259.51, -1.51, -65.72, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 256.32, -1.5, -67, 2, 0)
	MovementLoopAddLocation(NPC, 251.97, -1.29, -74.94, 2, 0)
	MovementLoopAddLocation(NPC, 249.78, -0.32, -86.49, 2, 0)
	MovementLoopAddLocation(NPC, 239.16, -1.12, -105.13, 2, 0)
end

