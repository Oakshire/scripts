--[[
    Script Name    : SpawnScripts/Generic/random_pattern_tiny_med_delay.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.18 06:10:40
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
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,15))
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
    MovementLoopAddLocation(NPC, X + 2, Y, Z, 2, math.random(7,15))
    MovementLoopAddLocation(NPC, X + 2, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X + 2, Y, Z + 4, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X + 2, Y, Z + 4, 2, 0)
	MovementLoopAddLocation(NPC, X + 3, Y, Z, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X + 3, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X + 2, Y, Z + 4, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X + 2, Y, Z + 4, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,15))
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,15))
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
    MovementLoopAddLocation(NPC, X - 2, Y, Z, 2, math.random(7,15))
    MovementLoopAddLocation(NPC, X - 2, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 2, Y, Z - 4, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X - 2, Y, Z - 4, 2, 0)
	MovementLoopAddLocation(NPC, X - 3, Y, Z, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X - 3, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 2, Y, Z - 4, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X - 2, Y, Z - 4, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(7,15))
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,15))
    MovementLoopAddLocation(NPC, X, Y, Z, 2,0)
	MovementLoopAddLocation(NPC, X + 2, Y, Z, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X + 2, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X + 2, Y, Z - 4, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X + 2, Y, Z - 4, 2, 0)
	MovementLoopAddLocation(NPC, X + 3, Y, Z, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X + 3, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X + 2, Y, Z - 4, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X + 2, Y, Z - 4, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,15))
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,15))
    MovementLoopAddLocation(NPC, X, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 2, Y, Z, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X - 2, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 2, Y, Z + 4, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X - 2, Y, Z + 4, 2, 0)
	MovementLoopAddLocation(NPC, X - 3, Y, Z, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X - 3, Y, Z, 2, 0)
	MovementLoopAddLocation(NPC, X - 2, Y, Z + 4, 2, math.random(7,15))
	MovementLoopAddLocation(NPC, X - 2, Y, Z + 4, 2, 0)
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(7,15))
end
math.random(10,15)
function respawn(NPC, Spawn)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end