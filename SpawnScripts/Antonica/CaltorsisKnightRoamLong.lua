--[[
    Script Name    : SpawnScripts/Antonica/CaltorsisKnightRoamLong.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.07 08:07:42
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

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
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(1,3))
    MovementLoopAddLocation(NPC, X + 35, Y, Z, 2,0)
	MovementLoopAddLocation(NPC, X + 35, Y, Z + 4, 2, 5)
	MovementLoopAddLocation(NPC, X + 35, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X + 35, Y, Z + 4, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
    MovementLoopAddLocation(NPC, X - 35, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 35, Y, Z - 4, 2, 5)
	MovementLoopAddLocation(NPC, X - 35, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 35, Y, Z - 4, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 1, 0)
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(4,8))
	MovementLoopAddLocation(NPC, X + 35, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X + 35, Y, Z - 4, 2, 5)
	MovementLoopAddLocation(NPC, X + 35, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X + 35, Y, Z - 4, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(2,5))
	MovementLoopAddLocation(NPC, X - 35, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 35, Y, Z + 4, 2, 5)
	MovementLoopAddLocation(NPC, X - 35, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 35, Y, Z + 4, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end