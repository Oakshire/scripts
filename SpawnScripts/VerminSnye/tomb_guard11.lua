--[[
	Script Name		:	tomb_guard11.lua
	Script Purpose	:	Waypoint Path for tomb_guard11.lua
	Script Author	:	Devn00b
	Script Date		:	06/26/2020 05:23:54 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
     local Level = GetLevel(NPC)
    local level1 =14
    local level2 = 15
    local difficulty1 = 6
    local hp1 = 795
    local power1 = 240
    local difficulty2 = 6
    local hp2 = 920
    local power2 = 270
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 188.27, -6.97, -94.02, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 186.21, -6.75, -89.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 188.35, -7.12, -90.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 188.28, -6.97, -93.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 186.84, -6.97, -93.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 185.57, -6.25, -91.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 189.59, -7.19, -91.31, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 185.57, -6.25, -91.6, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 186.84, -6.97, -93.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 188.28, -6.97, -93.88, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 188.35, -7.12, -90.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 186.21, -6.75, -89.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 188.27, -6.97, -94.02, 2, math.random(0,5))
end


