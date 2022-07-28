--[[
    Script Name    : SpawnScripts/Antonica/aSonicShrieker.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.27 08:07:14
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 13
    local level2 = 14
    local level3 = 15
    local difficulty1 = 2
    local hp1 = 240
    local power1 = 80
    local difficulty2 = 2
    local hp2 = 280
    local power2 = 90
    local difficulty3 = 2
    local hp3 = 310
    local power3 = 100
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    elseif Level == level3
        then
    SpawnSet(NPC, "difficulty", difficulty3)
    SpawnSet(NPC, "hp", hp3)
    SpawnSet(NPC, "power", power3)
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
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
    MovementLoopAddLocation(NPC, X + 4, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X + 4, Y, Z + 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X + 7, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X + 4, Y, Z + 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(20,45))
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
    MovementLoopAddLocation(NPC, X - 4, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X - 4, Y, Z - 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X - 7, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X - 4, Y, Z - 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(20,45))
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X + 4, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X + 4, Y, Z - 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X + 7, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X + 4, Y, Z - 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(20,45))
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,10))
	MovementLoopAddLocation(NPC, X - 4, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X - 4, Y, Z + 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X - 7, Y, Z, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X - 4, Y, Z + 4, 2, math.random(20,45))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(20,45))
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end