--[[
    Script Name    : SpawnScripts/Antonica/atidewalkerbehemoth.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.22 08:07:21
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 19
    local level2 = 20
    local difficulty1 = 9
    local hp1 = 4910
    local power1 = 1800
    local difficulty2 = 9
    local hp2 = 6445
    local power2 = 2020
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
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
    MovementLoopAddLocation(NPC, X + 14, Y, Z, 2,math.random(5,10))
	MovementLoopAddLocation(NPC, X + 14, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 20, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 14, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
    MovementLoopAddLocation(NPC, X - 14, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 14, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 20, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 14, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,10))
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 14, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 14, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 20, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 14, Y, Z - 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 14, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 14, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 20, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 14, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end