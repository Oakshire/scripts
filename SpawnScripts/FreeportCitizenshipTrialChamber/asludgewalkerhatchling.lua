--[[
    Script Name    : SpawnScripts/FreeportCitizenshipTrialChamber/asludgewalkerhatchling.lua
    Script Author  : Dorbin
    Script Date    : 2023.06.25 03:06:09
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddTimer(NPC,MakeRandomInt(0,2800),"ChooseMovement")
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
    MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,10))
    MovementLoopAddLocation(NPC, X + 5, Y, Z, 1,math.random(5,10))
	MovementLoopAddLocation(NPC, X + 5, Y, Z + 4, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 6, Y, Z, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 5, Y, Z + 4, 1, math.random(5,15))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,10))
end

function RouteTwo(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,10))
    MovementLoopAddLocation(NPC, X - 5, Y, Z, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 5, Y, Z - 4, 1, math.random(5,15))
	MovementLoopAddLocation(NPC, X - 6, Y, Z, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 5, Y, Z - 4, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,10))
end

function RouteThree(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 5, Y, Z, 1, math.random(5,15))
	MovementLoopAddLocation(NPC, X + 5, Y, Z - 4, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 6, Y, Z, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X + 5, Y, Z - 4, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function RouteFour(NPC, Spawn)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, 1, math.random(5,15))
	MovementLoopAddLocation(NPC, X - 5, Y, Z, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 5, Y, Z + 4, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 6, Y, Z, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X - 5, Y, Z + 4, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, X, Y, Z, 2, math.random(5,10))
end

function respawn(NPC, Spawn)
    spawn(NPC)
end