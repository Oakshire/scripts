--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer428691.lua
	Script Purpose	:	Waypoint Path for amorakdevourer428691.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:09:46 
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
	MovementLoopAddLocation(NPC, 255.49, -1.14, -56.26, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 255.29, -1.11, -62.59, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 253.84, -0.86, -87.49, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 247.83, -0.89, -91.54, 2, 0)
	MovementLoopAddLocation(NPC, 240.23, -1.68, -98.25, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 248.14, -0.52, -87.86, 2, 0)
	MovementLoopAddLocation(NPC, 251.35, -0.13, -84.63, 2, 0)
	MovementLoopAddLocation(NPC, 253.24, -0.37, -81.97, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 256.6, -1.01, -77.77, 2, 0)
	MovementLoopAddLocation(NPC, 264.23, -1.53, -71.61, 2, 0)
	MovementLoopAddLocation(NPC, 263.32, -1.53, -62.95, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 265.59, -1.64, -56.86, 2, math.random(14, 25))
end