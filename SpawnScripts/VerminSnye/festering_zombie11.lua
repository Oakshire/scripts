--[[
	Script Name		:	festering_zombie11.lua
	Script Purpose	:	Waypoint Path for festering_zombie11.lua
	Script Author	:	Devn00b
	Script Date		:	06/30/2020 09:56:27 PM
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
	MovementLoopAddLocation(NPC, 212.03, -6.97, -198.74, 2, 1)
	MovementLoopAddLocation(NPC, 212.19, -6.97, -203.6, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 214.53, -6.97, -200.84, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 210.23, -6.97, -203.3, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 212.94, -6.81, -203.56, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 210.7, -6.97, -200.48, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 214.54, -6.97, -200.38, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 211.68, -6.97, -202.09, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 212.06, -6.97, -199.32, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 212.45, -6.97, -203.72, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 212.06, -6.97, -199.32, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 211.68, -6.97, -202.09, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 214.54, -6.97, -200.38, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 210.7, -6.97, -200.48, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 212.94, -6.81, -203.56, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 210.23, -6.97, -203.3, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 214.53, -6.97, -200.84, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 212.19, -6.97, -203.6, 2, math.random(0,8))
	MovementLoopAddLocation(NPC, 212.03, -6.97, -198.74, 2, math.random(0,8))
end


