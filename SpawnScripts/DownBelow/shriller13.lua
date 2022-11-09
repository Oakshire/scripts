--[[
	Script Name		:	shriller13.lua
	Script Purpose	:	Waypoint Path for shriller13.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 02:35:16 PM
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
	MovementLoopAddLocation(NPC, -200.99, 8.94, -203.11, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -208.29, 8.39, -202.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -211.15, 8.06, -201.42, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -213.54, 7.7, -199.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -214.24, 7.46, -196.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -215.54, 7.15, -194.1, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -215.53, 6.12, -185.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -214.93, 5.74, -183.42, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -208.15, 4.65, -176.68, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -206.83, 4.49, -176.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -197.68, 3.56, -176.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -195.6, 3.28, -176.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -189.38, 2.37, -182.92, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -189.03, 2.09, -188.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -194.66, 2.1, -199.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -196.83, 2.1, -198.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -202.8, -2.49, -188.22, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -196.68, 2.1, -199.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -202.8, -2.49, -188.22, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -196.83, 2.1, -198.25, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -194.66, 2.1, -199.28, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -189.03, 2.09, -188.74, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -189.38, 2.37, -182.92, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -195.6, 3.28, -176.69, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -197.68, 3.56, -176.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -206.83, 4.49, -176.05, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -208.15, 4.65, -176.68, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -214.93, 5.74, -183.42, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -215.53, 6.12, -185.75, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -215.54, 7.15, -194.1, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -214.24, 7.46, -196.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -213.54, 7.7, -199.09, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -211.15, 8.06, -201.42, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -208.29, 8.39, -202.56, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -200.99, 8.94, -203.11, 2, math.random(0,10))
end


