--[[
    Script Name    : SpawnScripts/Antonica/anenragedwolf.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.07.11 04:07:58
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    
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
    MovementLoopAddLocation(NPC, X + 30, Y, Z + 20, 2,0)
	MovementLoopAddLocation(NPC, X + 20, Y, Z + 4, 2, 5)
	MovementLoopAddLocation(NPC, X + 30, Y, Z - 10, 2, 0)
	MovementLoopAddLocation(NPC, X + 25, Y, Z + 4, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
    MovementLoopAddLocation(NPC, X - 30, Y, Z - 20, 2, 0)
	MovementLoopAddLocation(NPC, X - 20, Y, Z - 4, 2, 5)
	MovementLoopAddLocation(NPC, X + 10, 0, Y, Z + 10, 2, 0)
	MovementLoopAddLocation(NPC, X - 30, Y, Z - 4, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 1, 0, "ChooseMovement")
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X + 30, Y, Z - 10, 2, 0)
	MovementLoopAddLocation(NPC, X + 10, Y, Z - 15, 2, 5)
	MovementLoopAddLocation(NPC, X + 20, Y, Z + 5, 2, 0)
	MovementLoopAddLocation(NPC, X + 30, Y, Z - 10, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 10, Y, Z + 5, 2, 0)
	MovementLoopAddLocation(NPC, X - 20, Y, Z + 20, 2, 5)
	MovementLoopAddLocation(NPC, X - 10, Y, Z - 10, 2, 0)
	MovementLoopAddLocation(NPC, X - 30, Y, Z + 4, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10), "ChooseMovement")
end

function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end