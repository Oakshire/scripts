--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer1587723.lua
	Script Purpose	:	Waypoint Path for amorakdevourer1587723.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:10:23 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        local level = GetLevel(NPC)
        if level == 4 then
            SpawnSet(NPC, "size", "28.8")
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
	MovementLoopAddLocation(NPC, 242.64, -0.89, -135.27, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 240.1, -1, -123.81, 2, 0)
	MovementLoopAddLocation(NPC, 239.29, -0.94, -116.12, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 239.61, -1.07, -103.68, 2, 0)
	MovementLoopAddLocation(NPC, 243.9, -0.95, -98.44, 2, 0)
	MovementLoopAddLocation(NPC, 252.72, -1.06, -91.81, 2, 0)
	MovementLoopAddLocation(NPC, 257.46, -1.17, -86.61, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 241.58, -1.11, -100.49, 2, 0)
	MovementLoopAddLocation(NPC, 239.03, -1.24, -104.25, 2, 0)
	MovementLoopAddLocation(NPC, 239.26, -1.06, -114.95, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 238.26, -1.57, -103.06, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 230.12, -0.82, -124.87, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 232.98, -1.34, -106.61, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 242.67, -0.87, -87.39, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 234.26, -1.05, -113.35, 2, math.random(14, 25))
end

