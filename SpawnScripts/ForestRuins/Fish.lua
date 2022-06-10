--[[
    Script Name    : SpawnScripts/ForestRuins/Fish.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.06.09 10:06:56
    Script Purpose : 
                   : 
--]]

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =7
    local level2 = 8
    local difficulty1 = 5
    local hp1 = 125
    local power1 = 55
    local difficulty2 = 5
    local hp2 = 145
    local power2 = 65
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

function respawn(NPC)
end

function ChooseMovement(NPC)
    local route = math.random(1,4)
	if route == 1 then
	    Route1(NPC)
	elseif route == 2 then
	    Route2(NPC)
	elseif route == 3 then
	    Route3(NPC)
	elseif route == 4 then
	    Route4(NPC)
	end
end

function Route1(NPC)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,20))
	MovementLoopAddLocation(NPC, X + 6, Y + 2, Z - 3, 2, math.random(20,60))
	MovementLoopAddLocation(NPC, X - 4, Y + 3, Z - 8, 2, math.random(20,60))
	MovementLoopAddLocation(NPC, X - 7, Y - 9, Z + 2, 2, math.random(20,60))
	MovementLoopAddLocation(NPC, X + 9, Y - 8, Z + 10, 2, math.random(20,60))
end

function Route2(NPC)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,20))
	MovementLoopAddLocation(NPC, X - 6, Y - 2, Z + 3, 2, math.random(20,60))
	MovementLoopAddLocation(NPC, X + 4, Y - 5, Z + 8, 2, math.random(20,60))
	MovementLoopAddLocation(NPC, X + 7, Y + 3, Z - 2, 2, math.random(20,60))
	MovementLoopAddLocation(NPC, X - 9, Y + 3, Z - 10, 2, math.random(20,60))
end

function Route3(NPC)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,20))
	MovementLoopAddLocation(NPC, X - 3, Y - 2, Z + 6, 2, math.random(20,60))
	MovementLoopAddLocation(NPC, X + 8, Y - 5, Z + 4, 2, math.random(20,60))
	MovementLoopAddLocation(NPC, X - 2, Y + 3, Z + 7, 2, math.random(20,60))
	MovementLoopAddLocation(NPC, X - 10, Y + 3, Z - 9, 2, math.random(20,60))
end

function Route4(NPC)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,20))
	MovementLoopAddLocation(NPC, X + 6, Y - 2, Z - 3, 2, math.random(20,60))
	MovementLoopAddLocation(NPC, X - 4, Y - 5, Z - 8, 2, math.random(20,60))
	MovementLoopAddLocation(NPC, X - 7, Y + 3, Z + 2, 2, math.random(20,60))
	MovementLoopAddLocation(NPC, X + 9, Y + 3, Z + 10, 2, math.random(20,60))
end