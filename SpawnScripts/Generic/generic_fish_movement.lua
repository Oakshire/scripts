--[[
	Script Name	: SpawnScripts/Generic/generic_fish_movement.lua
	Script Purpose	: Randomly chooses a path for the spawn to take
	Script Author	: theFoof
	Script Date	: 2013.5.16
	Script Notes	: 
--]]

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function spawn(NPC)
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