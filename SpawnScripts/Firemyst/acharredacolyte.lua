--[[
    Script Name    : SpawnScripts/Firemyst/acharredacolyte.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.28 03:07:02
    Script Purpose : 
                   : 
--]]

dofile("SpawnScripts/Generic/MonsterCallouts/Antonica_Skeleton1.lua")

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 15
    local level2 = 16
    local level3 = 17
    local difficulty1 = 9
    local hp1 = 3060
    local power1 = 1350
    local difficulty2 = 9
    local hp2 = 3485
    local power2 = 1350
    local difficulty3 = 9
    local hp3 = 3930
    local power3 = 1670
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
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
    MovementLoopAddLocation(NPC, X + 20, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 20, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 25, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 20, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
    MovementLoopAddLocation(NPC, X - 20, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 20, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 25, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 20, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,10))
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 20, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 20, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 25, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 20, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 20, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 20, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 25, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 20, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end