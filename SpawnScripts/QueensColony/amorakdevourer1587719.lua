--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer1587719.lua
	Script Purpose	:	Waypoint Path for amorakdevourer1587719.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:10:04 
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
	MovementLoopAddLocation(NPC, 244.1, -0.87, -134.98, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 238.68, -1, -115.41, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 238.32, -0.85, -142.88, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 239.91, -0.85, -132.82, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 230.24, -1, -101.2, 2, math.random(14, 25))
end


