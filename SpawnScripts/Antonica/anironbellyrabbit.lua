--[[
    Script Name    : SpawnScripts/Antonica/anironbellyrabbit.lua
    Script Author  : Premierio015, Scatman
    Script Date    : 2021.08.13 08:08:48
    Script Purpose : an ironbelly rabbit movement script, based on Scatman's medium circle movement script. 
    Script Notes  :  Current script might  be better overwritten with better movement loop in future.
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
	MovementLoopAddLocation(NPC, x + 12 , y, z - 13 , 10, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 10 , y, z - 15, 10, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 15, y, z + 14 , 10, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 10 , y, z + 13 , 10, math.random(5, 15))
end

function clockwise2(NPC)
	local x = GetX(NPC)
 	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x + 7 , y, z - 13 , 10, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 12 , y, z - 10 , 10, math.random(5, 15))
	MovementLoopAddLocation(NPC, x     , y, z + 11 , 10, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 14 , y, z + 6 , 10, math.random(5, 15))
end

function counter_clockwise1(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x - 12 , y, z + 13 , 10, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 10 , y, z + 15, 10, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 15, y, z - 14 , 10, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 10 , y, z - 13 , 10, math.random(5, 15))
end

function counter_clockwise2(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x - 7 , y, z + 13 , 10, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 12 , y, z + 10 , 10, math.random(5, 15))
	MovementLoopAddLocation(NPC, x     , y, z - 11 , 10, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 14 , y, z - 6 , 10, math.random(5, 15))
end

