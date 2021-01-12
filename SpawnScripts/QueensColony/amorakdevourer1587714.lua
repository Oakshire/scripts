--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer1587714.lua
	Script Purpose	:	Waypoint Path for amorakdevourer1587714.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:09:48 
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
	MovementLoopAddLocation(NPC, 247.42, -0.01, -80.89, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 246.63, -0.8, -89.82, 2, 0)
	MovementLoopAddLocation(NPC, 238.22, -1.32, -107.08, 2, 0)
	MovementLoopAddLocation(NPC, 244.2, -0.82, -131.46, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 243.01, -0.9, -122.71, 2, 0)
	MovementLoopAddLocation(NPC, 240.29, -0.8, -115.84, 2, 0)
	MovementLoopAddLocation(NPC, 238.56, -1.2, -107.06, 2, 0)
	MovementLoopAddLocation(NPC, 240.96, -1.28, -100.47, 2, 0)
	MovementLoopAddLocation(NPC, 266.22, -1.54, -72.73, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 251.84, -0.33, -85.27, 2, 0)
	MovementLoopAddLocation(NPC, 247.73, -0.6, -88.39, 2, 0)
	MovementLoopAddLocation(NPC, 240.4, -1.21, -95.8, 2, 0)
	MovementLoopAddLocation(NPC, 237.32, -1.38, -108.87, 2, 0)
	MovementLoopAddLocation(NPC, 238.46, -0.85, -135.25, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 231.59, -1.04, -111.46, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 232.32, -1.04, -113.13, 2, 0)
	MovementLoopAddLocation(NPC, 241.58, -0.88, -133.16, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 239.44, -0.85, -128.58, 2, 0)
	MovementLoopAddLocation(NPC, 234.24, -1.47, -106.43, 2, math.random(14, 25))
end