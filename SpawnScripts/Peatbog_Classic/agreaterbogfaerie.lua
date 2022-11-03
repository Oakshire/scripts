--[[
    Script Name    : SpawnScripts/Peatbog_Classic/agreaterbogfaerie.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.03 03:11:21
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 9
    local level2 = 10
    local difficulty1 = 8
    local hp1 = 555
    local power1 = 240
    local difficulty2 = 8
    local hp2 = 645
    local power2 = 300
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

---ChooseMovement(NPC)
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
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,15))
    MovementLoopAddLocation(NPC, X + 7, Y+4, Z, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X + 7, Y+4, Z + 4, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X + 7, Y, Z, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X + 7, Y, Z + 4, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,15))
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,15))
    MovementLoopAddLocation(NPC, X - 7, Y, Z, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X - 7, Y+4, Z - 4, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X - 7, Y+4, Z, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X - 7, Y, Z - 4, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(7,15))
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X + 7, Y+2, Z, 2,math.random(7,15))
	MovementLoopAddLocation(NPC, X + 7, Y+4, Z - 4, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X + 7, Y+2, Z, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X + 7, Y, Z - 4, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,15))
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X - 7, Y+4, Z, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X - 7, Y, Z + 4, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X - 7, Y+4, Z, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X - 7, Y, Z + 4, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,15))
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end