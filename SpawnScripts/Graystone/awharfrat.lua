--[[
    Script Name    : SpawnScripts/Graystone/awharfrat.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.27 09:10:38
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 1
    local level2 = 2
    local level3 = 3
    local difficulty1 = 6
    local hp1 = 30
    local power1 = 25
    local difficulty2 = 6
    local hp2 = 45
    local power2 = 35
    local difficulty3 =6
    local hp3 = 75
    local power3 = 45
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
     elseif Level == level3
        then
    SpawnSet(NPC, "difficulty", difficulty3)
    SpawnSet(NPC, "hp", hp3)
    SpawnSet(NPC, "power", power3)
    end

ChooseMovement(NPC)
end

function ChooseMovement(NPC)
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

function respawn(NPC)
	spawn(NPC)
end

function clockwise1(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x + 1.5 , y, z - 2 , 1, math.random(2, 10))
	MovementLoopAddLocation(NPC, x - .5 , y, z - 3, 1, math.random(2, 10))
	MovementLoopAddLocation(NPC, x - 3, y, z + 2.5 , 1, math.random(2, 10))
	MovementLoopAddLocation(NPC, x + .5 , y, z + 2 , 1, math.random(2, 10))


        --MovementLoopAddLocation(NPC, x + 3 , y, z - 4 , 1, math.random(2, 5))
	--MovementLoopAddLocation(NPC, x - 1 , y, z - 6, 1, math.random(2, 5))
	--MovementLoopAddLocation(NPC, x - 6, y, z + 5 , 1, math.random(2, 5))
	--MovementLoopAddLocation(NPC, x + 1 , y, z + 4 , 1, math.random(2, 5))
end

function clockwise2(NPC)
	local x = GetX(NPC)
 	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x + 1 , y, z - 2 , 1, math.random(2, 10))
	MovementLoopAddLocation(NPC, x - 3.5 , y, z - .5 , 1, math.random(2, 10))
	MovementLoopAddLocation(NPC, x     , y, z + 1 , 1, math.random(2, 10))
	MovementLoopAddLocation(NPC, x + 2.5 , y, z + .5 , 1, math.random(2, 10))
end

function counter_clockwise1(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x - 1.5 , y, z + 1 , 1, math.random(2, 10))
	MovementLoopAddLocation(NPC, x + .5 , y, z + 3, 1, math.random(2, 10))
	MovementLoopAddLocation(NPC, x + 2, y, z - 2.5 , 1, math.random(2, 10))
	MovementLoopAddLocation(NPC, x - .5 , y, z - 2 , 1, math.random(2, 10))
end

function counter_clockwise2(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x - 1 , y, z + 2 , 1, math.random(2, 10))
	MovementLoopAddLocation(NPC, x + 1.5 , y, z + .5 , 1, math.random(2, 10))
	MovementLoopAddLocation(NPC, x     , y, z - 1 , 1, math.random(2, 10))
	MovementLoopAddLocation(NPC, x - 2.5 , y, z - .5 , 1, math.random(2, 10))
end

