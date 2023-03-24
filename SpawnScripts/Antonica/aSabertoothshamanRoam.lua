--[[
    Script Name    : SpawnScripts/Antonica/aSabertoothshamanRoam.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.03.24 12:03:56
    Script Purpose : 
                   : 
--]]

function spawn(NPC) 
    local level1 = 15
    local level2 = 16
    local level3 = 17
    local difficulty1 = 6
    local hp1 = 890
    local power1 = 270
    local difficulty2 = 6
    local hp2 = 975
    local power2 = 310
    local difficulty3 =6
    local hp3 = 1105
    local power3 = 360
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
    MovementLoopAddLocation(NPC, X + 10, Y, Z, 2,math.random(5,10))
	MovementLoopAddLocation(NPC, X , Y, Z + 12, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 10, Y, Z -10, 2, 0)
	MovementLoopAddLocation(NPC, X + 14, Y, Z + 4, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
    MovementLoopAddLocation(NPC, X - 14, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z - 14, 2, 0)
	MovementLoopAddLocation(NPC, X - 10, Y, Z -10, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X , Y, Z - 8, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, 0,  "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X + 10, Y, Z, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X -14, Y, Z - 8, 2, 0)
	MovementLoopAddLocation(NPC, X + 14, Y, Z -10, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 10, Y, Z - 10, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 10, Y, Z -14, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 14, Y, Z + 10, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 10, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 14, Y, Z + 5, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end