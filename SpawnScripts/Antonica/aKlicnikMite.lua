--[[
    Script Name    : SpawnScripts/Antonica/aKlicnikMite.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.04 05:07:55
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 8
    local level2 = 9
    local level3 = 10
    local level4 = 11
    local level5 = 12
    local difficulty = 6
    local hp1 = 240
    local power1 = 100
    local hp2 = 275
    local power2 = 110
    local hp3 = 370
    local power3= 130
    local hp4= 430
    local power4 = 160
    local hp5 = 550
    local power5 = 185
    
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    elseif Level == level3
        then
    SpawnSet(NPC, "difficulty", difficulty)
    SpawnSet(NPC, "hp", hp3)
    SpawnSet(NPC, "power", power3)
    elseif Level == level4
        then
    SpawnSet(NPC, "difficulty", difficulty)
    SpawnSet(NPC, "hp", hp4)
    SpawnSet(NPC, "power", power4)
    elseif Level == level5
        then
    SpawnSet(NPC, "difficulty", difficulty)
    SpawnSet(NPC, "hp", hp5)
    SpawnSet(NPC, "power", power5)
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
    MovementLoopAddLocation(NPC, X + 7, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 7, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 14, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 7, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10),"ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
    MovementLoopAddLocation(NPC, X - 7, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 7, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 14, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 7, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,10), "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 7, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 7, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 14, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 7, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 7, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 7, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 14, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 7, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end