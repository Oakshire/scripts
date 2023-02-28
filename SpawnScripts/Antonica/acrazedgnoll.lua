--[[
    Script Name    : SpawnScripts/Antonica/acrazedgnoll.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.27 10:02:25
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 16
    local level2 = 17
    local difficulty1 = 8
    local hp1 = 2180
    local power1 = 670
    local difficulty2 = 8
    local hp2 = 2550
    local power2 = 725
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
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
    MovementLoopAddLocation(NPC, X + 7, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 7, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 9, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 7, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10),  "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
    MovementLoopAddLocation(NPC, X - 12, Y, Z - 5, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 15, Y, Z - 10, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 5, Y, Z + 5, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X  + 10, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,10), "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 15, Y, Z+5, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 15, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 10, Y, Z + 5, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + -10, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 10, Y, Z -10, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 5, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 10, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 5, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end