--[[
	Script Name		:	shriller16.lua
	Script Purpose	:	Waypoint Path for shriller16.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 01:04:51 PM
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
	MovementLoopAddLocation(NPC, -152.16, 2, -167.02, 1, 0)
	MovementLoopAddLocation(NPC, -149.06, 2, -168.83, 1, 0)
	MovementLoopAddLocation(NPC, -155.01, 2, -166.52, 1, 0)
	MovementLoopAddLocation(NPC, -153.71, 2, -163.37, 1, 0)
	MovementLoopAddLocation(NPC, -147.84, 2, -165.75, 1, 0)
	MovementLoopAddLocation(NPC, -151.4, 2, -169.07, 1, 0)
	MovementLoopAddLocation(NPC, -153.71, 2, -163.59, 1, 0)
	MovementLoopAddLocation(NPC, -153.5, 2, -167.66, 1, 0)
	MovementLoopAddLocation(NPC, -148.98, 2, -165.5, 1, 0)
	MovementLoopAddLocation(NPC, -149.95, 2, -168.7, 1, 0)
	MovementLoopAddLocation(NPC, -150.16, 2, -166.61, 1, 0)
	MovementLoopAddLocation(NPC, -149.59, 2, -166.4, 1, 0)
	MovementLoopAddLocation(NPC, -153.93, 2, -166.65, 1, 0)
	MovementLoopAddLocation(NPC, -150.87, 2, -164.58, 1, 0)
	MovementLoopAddLocation(NPC, -152.51, 2, -168.53, 1, 0)
	MovementLoopAddLocation(NPC, -150.87, 2, -164.58, 1, 0)
	MovementLoopAddLocation(NPC, -153.93, 2, -166.65, 1, 0)
	MovementLoopAddLocation(NPC, -149.59, 2, -166.4, 1, 0)
	MovementLoopAddLocation(NPC, -150.16, 2, -166.61, 1, 0)
	MovementLoopAddLocation(NPC, -149.95, 2, -168.7, 1, 0)
	MovementLoopAddLocation(NPC, -148.98, 2, -165.5, 1, 0)
	MovementLoopAddLocation(NPC, -153.5, 2, -167.66, 1, 0)
	MovementLoopAddLocation(NPC, -153.71, 2, -163.59, 1, 0)
	MovementLoopAddLocation(NPC, -151.4, 2, -169.07, 1, 0)
	MovementLoopAddLocation(NPC, -147.84, 2, -165.75, 1, 0)
	MovementLoopAddLocation(NPC, -153.71, 2, -163.37, 1, 0)
	MovementLoopAddLocation(NPC, -155.01, 2, -166.52, 1, 0)
	MovementLoopAddLocation(NPC, -149.06, 2, -168.83, 1, 0)
	MovementLoopAddLocation(NPC, -152.16, 2, -167.02, 1, 0)
end


