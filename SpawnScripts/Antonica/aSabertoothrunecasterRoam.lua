--[[
    Script Name    : SpawnScripts/Antonica/aSabertoothrunecasterRoam.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.08 08:03:58
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 17
    local level2 = 18
    local level3 = 19
    local difficulty = 6
    local hp1 = 1180
    local power1 = 360
    local hp2 = 1290
    local power2 = 410
    local hp3 = 1315
    local power3 = 425
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
    MovementLoopAddLocation(NPC, X + 8, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X , Y, Z +12, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X +12, Y, Z -12, 2, 0)
	MovementLoopAddLocation(NPC, X + 12, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
    MovementLoopAddLocation(NPC, X - 12, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z - 10, 2, 0)
	MovementLoopAddLocation(NPC, X - 10, Y, Z -10, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X , Y, Z - 8, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,10),  "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X + 10, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X -12, Y, Z - 8, 2, 0)
	MovementLoopAddLocation(NPC, X + 12, Y, Z -10, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 8, Y, Z - 12, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 10, Y, Z -8, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 12, Y, Z + 8, 2, 0)
	MovementLoopAddLocation(NPC, X + 10, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 12, Y, Z + 8, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, 0, "ChooseMovement")
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end