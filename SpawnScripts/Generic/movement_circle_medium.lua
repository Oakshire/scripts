--[[
	Script Name	: SpawnScripts/Generic/movement_circle_medium.lua
	Script Purpose	: Randomly chooses a medium circle for the spawn to take
	Script Author	: theFoof
	Script Date	: 2013.5.22
	Script Notes	: larger version of movement_cirlce_small.lua (written by Scatman)
--]]

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function spawn(NPC)
    SpawnChooseRandomMovement(NPC)
end

function SpawnChooseRandomMovement(NPC)
	local choice = math.random(1, 4)
	if choice == 1 then
		clockwise1(NPC)
	elseif choice == 2 then
		clockwise2(NPC)
	elseif choice == 3 then
		counter_clockwise1(NPC)
	elseif choice == 4 then
		counter_clockwise2(NPC)
	end
end

function clockwise1(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x + 12 , y, z - 13 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 10 , y, z - 15, 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 15, y, z + 14 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 10 , y, z + 13 , 2, math.random(5, 15))
end

function clockwise2(NPC)
	local x = GetX(NPC)
 	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x + 7 , y, z - 13 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 12 , y, z - 10 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x     , y, z + 11 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 14 , y, z + 6 , 2, math.random(5, 15))
end

function counter_clockwise1(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x - 12 , y, z + 13 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 10 , y, z + 15, 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 15, y, z - 14 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 10 , y, z - 13 , 2, math.random(5, 15))
end

function counter_clockwise2(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x - 7 , y, z + 13 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 12 , y, z + 10 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x     , y, z - 11 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 14 , y, z - 6 , 2, math.random(5, 15))
end
