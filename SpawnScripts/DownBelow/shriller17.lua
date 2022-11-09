--[[
	Script Name		:	shriller17.lua
	Script Purpose	:	Waypoint Path for shriller17.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 02:23:48 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 4
    local level2 = 5
    local difficulty1 = 6
    local hp1 = 110
    local power1 = 55
    local difficulty2 = 6
    local hp2 = 130
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
 spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -126.8, 2, -124.74, 1, 0)
	MovementLoopAddLocation(NPC, -128.34, 2, -136.19, 1, 0)
	MovementLoopAddLocation(NPC, -147.06, 2, -138.74, 1, 0)
	MovementLoopAddLocation(NPC, -159.09, 2, -134.09, 1, 0)
	MovementLoopAddLocation(NPC, -158.12, 2, -119.96, 1, 0)
	MovementLoopAddLocation(NPC, -154.12, 2, -96.36, 1, 0)
	MovementLoopAddLocation(NPC, -147.81, 2, -84.18, 1, 0)
	MovementLoopAddLocation(NPC, -168.98, 2, -73.79, 1, 0)
	MovementLoopAddLocation(NPC, -182.93, 2, -73.04, 1, 0)
	MovementLoopAddLocation(NPC, -188.84, 2, -72.02, 1, 0)
	MovementLoopAddLocation(NPC, -192.35, 2, -63.76, 1, 0)
	MovementLoopAddLocation(NPC, -190.13, 2, -48.1, 1, 0)
	MovementLoopAddLocation(NPC, -176.04, 2, -33.4, 1, 0)
	MovementLoopAddLocation(NPC, -190.13, 2, -48.1, 1, 0)
	MovementLoopAddLocation(NPC, -192.35, 2, -63.76, 1, 0)
	MovementLoopAddLocation(NPC, -188.84, 2, -72.02, 1, 0)
	MovementLoopAddLocation(NPC, -182.93, 2, -73.04, 1, 0)
	MovementLoopAddLocation(NPC, -168.98, 2, -73.79, 1, 0)
	MovementLoopAddLocation(NPC, -147.81, 2, -84.18, 1, 0)
	MovementLoopAddLocation(NPC, -154.12, 2, -96.36, 1, 0)
	MovementLoopAddLocation(NPC, -158.12, 2, -119.96, 1, 0)
	MovementLoopAddLocation(NPC, -159.09, 2, -134.09, 1, 0)
	MovementLoopAddLocation(NPC, -147.06, 2, -138.74, 1, 0)
	MovementLoopAddLocation(NPC, -128.34, 2, -136.19, 1, 0)
	MovementLoopAddLocation(NPC, -126.8, 2, -124.74, 1, 0)
end


