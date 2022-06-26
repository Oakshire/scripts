--[[
	Script Name		:	bloodsaber_initiate.lua
	Script Purpose	:	Waypoint Path for bloodsaber_initiate.lua
	Script Author	:	Devn00b
	Script Date		:	04/28/2020 05:44:20 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 7
    local level2 = 8
    local difficulty1 = 5
    local hp1 = 125
    local power1 = 55
    local difficulty2 = 5
    local hp2 = 145
    local power2 = 65
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
	MovementLoopAddLocation(NPC, -11.17, -4, -138.13, 2, math.random(1,10))
	MovementLoopAddLocation(NPC, 2.51, 0.3, -138.66, 2, math.random(1,10))
	MovementLoopAddLocation(NPC, -11.17, -4, -138.13, 2, math.random(1,10))
end


