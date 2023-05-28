--[[
    Script Name    : SpawnScripts/Antonica/aCaltorsisClericRoam.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.02.02 09:02:38
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/MonsterCallouts/BaseGhost1.lua")

function spawn(NPC)
    Appearace(NPC)
    local Level = GetLevel(NPC)
    local level1 = 18
    local level2 = 19
    local difficulty1 = 6
    local hp1 = 1180
    local power1 = 410
    local difficulty2 = 6
    local hp2 = 1315
    local power2 = 425
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

function Appearance(NPC)
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",2851)    
    else
    SpawnSet(NPC,"model_type",2852)    
    end
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
    MovementLoopAddLocation(NPC, X + 35, Y, Z, 2,0)
	MovementLoopAddLocation(NPC, X , Y, Z + 35, 2, 5)
	MovementLoopAddLocation(NPC, X + 10, Y, Z -35, 2, 0)
	MovementLoopAddLocation(NPC, X + 25, Y, Z + 4, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
    MovementLoopAddLocation(NPC, X - 35, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z - 25, 2, 5)
	MovementLoopAddLocation(NPC, X - 35, Y, Z -25, 2, 0)
	MovementLoopAddLocation(NPC, X , Y, Z - 4, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 1, 0,  "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X + 35, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X -35, Y, Z - 4, 2, 5)
	MovementLoopAddLocation(NPC, X + 10, Y, Z -35, 2, 0)
	MovementLoopAddLocation(NPC, X + 25, Y, Z - 25, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 25, Y, Z -25, 2, 0)
	MovementLoopAddLocation(NPC, X - 35, Y, Z + 10, 2, 5)
	MovementLoopAddLocation(NPC, X + 35, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 35, Y, Z + 25, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end