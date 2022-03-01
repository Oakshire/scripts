--[[
	Script Name	: SpawnScripts/Generic/MovementCircleSmall.lua
	Script Purpose	: Randomly chooses a small circle for the spawn to take
	Script Author	: Scatman
	Script Date	: 2009.10.27
	Script Notes	: 
--]]

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
	MovementLoopAddLocation(NPC, x + 7 , y, z - 8 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 5 , y, z - 10, 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 10, y, z + 9 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 5 , y, z + 8 , 2, math.random(5, 15))
end

function clockwise2(NPC)
	local x = GetX(NPC)
 	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x + 2 , y, z - 8 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 7 , y, z - 5 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x     , y, z + 6 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 9 , y, z + 1 , 2, math.random(5, 15))
end

function counter_clockwise1(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x - 7 , y, z + 8 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 5 , y, z + 10, 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 10, y, z - 9 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 5 , y, z - 8 , 2, math.random(5, 15))
end

function counter_clockwise2(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x - 2 , y, z + 8 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 7 , y, z + 5 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x     , y, z - 6 , 2, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 9 , y, z - 1 , 2, math.random(5, 15))
end
