--[[
	Script Name		:	crypt_substance5.lua
	Script Purpose	:	Waypoint Path for crypt_substance5.lua
	Script Author	:	Devn00b
	Script Date		:	05/10/2020 10:40:46 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        local Level = GetLevel(NPC)
    local level1 = 6
    local level2 = 5
    local difficulty1 = 6
    local hp1 = 150
    local power1 = 150
    local difficulty2 = 6
    local hp2 = 130
    local power2 = 130
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 20.6, 0.26, -93.69, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 13.9, 0.13, -104.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 5.65, -0.07, -109.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.05, -0.04, -95.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -19.42, -0.08, -81.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -29.31, -0.03, -76.1, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -30.12, -0.07, -71.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -49.02, -0.11, -65.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -52.63, -0.08, -71.24, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -49.02, -0.11, -65.42, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -30.12, -0.07, -71.38, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -29.31, -0.03, -76.1, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -19.42, -0.08, -81.48, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.05, -0.04, -95.68, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 5.65, -0.07, -109.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 13.9, 0.13, -104.25, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 20.6, 0.26, -93.69, 2, math.random(0,5))
end


