--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer1587721.lua
	Script Purpose	:	Waypoint Path for amorakdevourer1587721.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:10:13 
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
	MovementLoopAddLocation(NPC, 234, -1.05, -111.37, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 240.02, -1, -103.2, 2, 0)
	MovementLoopAddLocation(NPC, 245.7, -1, -96.86, 2, 0)
	MovementLoopAddLocation(NPC, 274.26, -1.56, -73.91, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 265.29, -1.53, -69.73, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 264.78, -1.53, -59.6, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 265.07, -1.53, -69.57, 2, 0)
	MovementLoopAddLocation(NPC, 261.11, -1.16, -80.58, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 247.34, -0.77, -95.9, 2, 0)
	MovementLoopAddLocation(NPC, 243.38, -0.87, -99.18, 2, 0)
	MovementLoopAddLocation(NPC, 235.4, -1.15, -109.57, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 229.99, -0.82, -124.48, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 248.75, -1.02, -144.42, 2, math.random(14, 25))
end


