--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer1587717.lua
	Script Purpose	:	Waypoint Path for amorakdevourer1587717.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:09:55 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        local level = GetLevel(NPC)
        if level == 4 then
            SpawnSet(NPC, "size", "28.8")
            SpawnSet(NPC, "hp", 35)
            SpawnSet(NPC, "power", 20)
        end
        SpawnSet(NPC, "difficulty", "2") 
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 264.21, -1.5, -75.9, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 264.42, -1.53, -70.37, 2, 0)
	MovementLoopAddLocation(NPC, 260.91, -1.55, -55.04, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 260.96, -1.52, -63.07, 2, 0)
	MovementLoopAddLocation(NPC, 252.73, -0.7, -87.51, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 278.02, -1.44, -58.06, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 269.58, -1.6, -57.7, 2, 0)
	MovementLoopAddLocation(NPC, 258.92, -1.51, -66.93, 2, 0)
	MovementLoopAddLocation(NPC, 249.88, -1.48, -72.22, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 257.7, -1.5, -72.26, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 252.77, -0.56, -86.54, 2, 0)
	MovementLoopAddLocation(NPC, 248.72, -0.89, -92.79, 2, 0)
	MovementLoopAddLocation(NPC, 239.25, -1.39, -102.35, 2, 0)
	MovementLoopAddLocation(NPC, 234.29, -1.35, -117.87, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 242.67, -0.87, -87.45, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 247.66, -0.17, -79.48, 2, 0)
	MovementLoopAddLocation(NPC, 264.23, -1.53, -60.12, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 261.11, -1.52, -64.59, 2, 0)
	MovementLoopAddLocation(NPC, 251.31, -1.48, -72.22, 2, math.random(14, 25))
end
