--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer1587722.lua
	Script Purpose	:	Waypoint Path for amorakdevourer1587722.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:10:17 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        local level = GetLevel(NPC)
        if level == 4 then
            SpawnSet(NPC, "size", "28.8")
            SpawnSet(NPC, "hp", 110)
            SpawnSet(NPC, "power", 55)
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
	MovementLoopAddLocation(NPC, 235.76, -1.42, -107.23, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 235.8, -1.11, -113.49, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 245.76, -0.58, -88.28, 2, 0)
	MovementLoopAddLocation(NPC, 248.48, -0.76, -76.67, 2, 0)
	MovementLoopAddLocation(NPC, 257, -0.79, -58.81, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 256.16, -1.23, -63.07, 2, 0)
	MovementLoopAddLocation(NPC, 255.51, -0.92, -80.68, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 249.78, -1.42, -67.64, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 241.26, -0.87, -91.55, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 242.7, -1.19, -98.39, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 255.72, -1.26, -89.32, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 262.48, -1.28, -81.14, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 266.92, -1.54, -70.28, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 260.22, -1.5, -61.64, 2, 0)
	MovementLoopAddLocation(NPC, 251.88, -0.71, -59.82, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 249.94, -1.42, -67.52, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 255.45, -1.23, -76.21, 2, math.random(14, 25))
end


