--[[
    Script Name    : SpawnScripts/Classic_forest/aforgottenguardian.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.12 09:10:48
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    if  GetSpawnLocationID(NPC)== 133778062 or  GetSpawnLocationID(NPC)== 133778060 or  GetSpawnLocationID(NPC)== 133778065 or  GetSpawnLocationID(NPC)== 133778066 then
    else
    AddTimer(NPC,math.random(2000,5500),"ChooseMovement")
    end
    local level1 = 9
    local level2 = 10
    local level3 = 11
    local difficulty1 = 7
    local hp1 = 370
    local power1 = 160
    local difficulty2 = 7
    local hp2 = 430
    local power2 = 200
    local difficulty3 =7
    local hp3 = 580
    local power3 = 240
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
    MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(2,10))
    MovementLoopAddLocation(NPC, X + 4, Y, Z, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, X + 4, Y, Z + 4, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, X + 7, Y, Z, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, X + 4, Y, Z + 4, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(8,12))
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(2,10))
    MovementLoopAddLocation(NPC, X - 4, Y, Z, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, X - 4, Y, Z - 4, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, X - 7, Y, Z, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, X - 4, Y, Z - 4, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(8,12))
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(2,10))
	MovementLoopAddLocation(NPC, X + 4, Y, Z, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, X + 4, Y, Z - 4, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, X + 7, Y, Z, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, X + 4, Y, Z - 4, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(8,12))
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(2,10))
	MovementLoopAddLocation(NPC, X - 4, Y, Z, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, X - 4, Y, Z + 4, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, X - 7, Y, Z, 1, math.random(8,12))
	MovementLoopAddLocation(NPC, X - 4, Y, Z + 4, 1, math.random(20,45))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(20,45))
end

function respawn(NPC, Spawn)
    spawn(NPC)
end
