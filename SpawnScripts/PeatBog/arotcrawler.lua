--[[
    Script Name    : SpawnScripts/PeatBog/arotcrawler.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.05.18 04:05:55
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 9
    local level2 = 10
    local difficulty1 = 5
    local hp1 = 165
    local power1 = 75
    local difficulty2 = 5
    local hp2 = 235
    local power2 = 85
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
end

function respawn(NPC)
	spawn(NPC)
end

------Slow Movement Script

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
