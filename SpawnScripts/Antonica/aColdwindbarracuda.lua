--[[
    Script Name    : SpawnScripts/Antonica/aColdwindbarracuda.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.12 12:07:54
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 10
    local level2 = 11
    local difficulty1 = 6
    local hp1 = 370
    local power1 = 130
    local difficulty2 = 6
    local hp2 = 430
    local power2 = 160
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
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
    MovementLoopAddLocation(NPC, X + 14, Y, Z, 2,0)
	MovementLoopAddLocation(NPC, X + 14, Y, Z + 4, 2, 5)
	MovementLoopAddLocation(NPC, X + 20, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X + 14, Y, Z + 4, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
    MovementLoopAddLocation(NPC, X - 14, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 14, Y, Z - 4, 2, 5)
	MovementLoopAddLocation(NPC, X - 20, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 14, Y, Z - 4, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 1, 0)
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X + 14, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X + 14, Y, Z - 4, 2, 5)
	MovementLoopAddLocation(NPC, X + 20, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X + 14, Y, Z - 4, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 14, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 14, Y, Z + 4, 2, 5)
	MovementLoopAddLocation(NPC, X - 20, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 14, Y, Z + 4, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end