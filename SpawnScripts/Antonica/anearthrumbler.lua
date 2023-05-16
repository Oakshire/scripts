--[[
    Script Name    : SpawnScripts/Antonica/anearthrumbler.lua
    Script Author  : Dorbin
    Script Date    : 2023.05.15 12:05:46
    Script Purpose : 
                   : 
--]]
function spawn(NPC)
    SetSpawnAnimation(NPC, 13016)
AddTimer(NPC,MakeRandomInt(1000,3500),"ChooseMovement")
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
    MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(12,15))
    MovementLoopAddLocation(NPC, X + 4, Y, Z, 1,math.random(5,15))
	MovementLoopAddLocation(NPC, X + 4, Y, Z + 4, 1, math.random(5,15))
	MovementLoopAddLocation(NPC, X + 6, Y, Z, 1, math.random(12,15))
	MovementLoopAddLocation(NPC, X + 4, Y, Z + 4, 1, math.random(5,15))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,15))
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,15))
    MovementLoopAddLocation(NPC, X - 4, Y, Z, 1, math.random(12,15))
	MovementLoopAddLocation(NPC, X - 4, Y, Z - 4, 1, math.random(5,15))
	MovementLoopAddLocation(NPC, X - 6, Y, Z, 1, math.random(12,15))
	MovementLoopAddLocation(NPC, X - 4, Y, Z - 4, 1, math.random(5,15))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(12,15))
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,15))
	MovementLoopAddLocation(NPC, X + 4, Y, Z, 1, math.random(12,15))
	MovementLoopAddLocation(NPC, X + 4, Y, Z - 4, 1, math.random(5,15))
	MovementLoopAddLocation(NPC, X + 6, Y, Z, 1, math.random(12,15))
	MovementLoopAddLocation(NPC, X + 4, Y, Z - 4, 1, math.random(5,15))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(12,15))
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(12,15))
	MovementLoopAddLocation(NPC, X - 4, Y, Z, 1, math.random(5,15))
	MovementLoopAddLocation(NPC, X - 4, Y, Z + 4, 1, math.random(5,15))
	MovementLoopAddLocation(NPC, X - 6, Y, Z, 1, math.random(12,15))
	MovementLoopAddLocation(NPC, X - 4, Y, Z + 4, 1, math.random(12,15))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,15))
end


function respawn(NPC)
	spawn(NPC)
end