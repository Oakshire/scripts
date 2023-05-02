--[[
    Script Name    : SpawnScripts/Blackburrow/afiercerazorgill.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.15 04:07:19
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 13
    local level2 = 14
    local difficulty1 = 6
    local hp1 = 680
    local power1 = 205
    local difficulty2 = 6
    local hp2 = 795
    local power2 = 240
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

    ChooseMovement(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function ChooseMovement(NPC)
	local route = math.random(1,4)
	if route == 1 then
	    RouteOne(NPC, Spawn)
	elseif route == 2 then
	    RouteTwo(NPC, Spawn)
	elseif route == 3 then
	    RouteThree(NPC, Spawn)
	elseif route == 4 then
	    RouteFour(NPC, Spawn)
	end
end

function RouteOne(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,10))
    MovementLoopAddLocation(NPC, X + 4, Y, Z, 1,math.random(5,10))
	MovementLoopAddLocation(NPC, X + 4, Y, Z + 4, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 4, Y, Z, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 4, Y, Z + 4, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,10), "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,10))
    MovementLoopAddLocation(NPC, X - 4, Y, Z, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 4, Y, Z - 4, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 4, Y, Z, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 4, Y, Z - 4, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,10), "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 4, Y, Z, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 4, Y, Z - 4, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 4, Y, Z, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 4, Y, Z - 4, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,10), "ChooseMovement")
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 4, Y, Z, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 4, Y, Z + 4, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 4, Y, Z, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 4, Y, Z + 4, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,10), "ChooseMovement")
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end