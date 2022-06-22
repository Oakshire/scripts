--[[
	Script Name		:	tomb_guard21.lua
	Script Purpose	:	Waypoint Path for tomb_guard21.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 09:56:18 PM
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
	MovementLoopAddLocation(NPC, 212.04, -6.97, -198.02, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 213.71, -6.97, -202.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 210.13, -6.97, -201.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 214.65, -6.97, -199.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 209.41, -6.97, -203.12, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 211.95, -6.97, -202.76, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 210.21, -6.97, -201.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 213.51, -6.97, -202.63, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 212.44, -6.97, -204, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 214.41, -6.97, -200.62, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 212.44, -6.97, -204, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 213.51, -6.97, -202.63, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 210.21, -6.97, -201.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 211.95, -6.97, -202.76, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 209.41, -6.97, -203.12, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 214.65, -6.97, -199.94, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 210.13, -6.97, -201.39, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 213.71, -6.97, -202.54, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, 212.04, -6.97, -198.02, 2, math.random(0,10))
end


