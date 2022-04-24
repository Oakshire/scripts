--[[
	Script Name		:	shriller13.lua
	Script Purpose	:	Waypoint Path for shriller13.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 02:35:16 PM
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
	MovementLoopAddLocation(NPC, -200.99, 6.94, -203.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -208.29, 6.39, -202.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -211.15, 6.06, -201.42, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -213.54, 5.7, -199.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -214.24, 5.46, -196.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -215.54, 5.15, -194.1, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -215.53, 4.12, -185.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -214.93, 3.74, -183.42, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -208.15, 2.65, -176.68, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -206.83, 2.49, -176.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -197.68, 1.56, -176.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -195.6, 1.28, -176.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -189.38, 0.37, -182.92, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -189.03, -0.09, -188.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -194.66, -0.1, -199.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -196.83, -0.1, -198.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -202.8, -4.49, -188.22, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -196.68, -0.1, -199.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -202.8, -4.49, -188.22, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -196.83, -0.1, -198.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -194.66, -0.1, -199.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -189.03, -0.09, -188.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -189.38, 0.37, -182.92, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -195.6, 1.28, -176.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -197.68, 1.56, -176.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -206.83, 2.49, -176.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -208.15, 2.65, -176.68, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -214.93, 3.74, -183.42, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -215.53, 4.12, -185.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -215.54, 5.15, -194.1, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -214.24, 5.46, -196.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -213.54, 5.7, -199.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -211.15, 6.06, -201.42, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -208.29, 6.39, -202.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -200.99, 6.94, -203.11, 2, math.random(0,10))
end


