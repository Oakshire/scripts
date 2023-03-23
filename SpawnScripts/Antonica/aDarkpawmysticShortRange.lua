--[[
    Script Name    : SpawnScripts/Antonica/aDarkpawmysticShortRange.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.23 03:03:09
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/DarkpawGnoll1.lua")
function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 11
    local level2 = 12
    local difficulty1 = 6
    local hp1 = 430
    local power1 = 160
    local difficulty2 = 6
    local hp2 = 550
    local power2 = 185
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

AddTimer(NPC, 6000, "ChooseMovement")
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
    MovementLoopAddLocation(NPC, X + 5, Y, Z, 2,math.random(5,10))
	MovementLoopAddLocation(NPC, X , Y, Z + 8, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 5, Y, Z -5, 2, 0)
	MovementLoopAddLocation(NPC, X + 8, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
    MovementLoopAddLocation(NPC, X - 8, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z - 8, 2, 0)
	MovementLoopAddLocation(NPC, X - 5, Y, Z -5, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X , Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, 0,  "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X + 5, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X -8, Y, Z - 4, 2, 0)
	MovementLoopAddLocation(NPC, X + 8, Y, Z -5, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 5, Y, Z - 5, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 5, Y, Z -8, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 8, Y, Z + 5, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 5, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 8, Y, Z + 5, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end