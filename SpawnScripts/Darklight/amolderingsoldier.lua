--[[
	Script Name		:	SpawnScripts/Darklight/amolderingsoldier.lua
	Script Purpose	:	A Moldering Soldier ID 340084
	Script Author	:	Cynnar
	Script Date		:	12/30/2015
	Script Notes	:	Adds a scrap of armor drop for quest Picking Up Slack (Quest ID 139)
	Script Notes	:	Currently using scrap metal (item ID 11996) in place of a scrap of armor.
--]]
local PickingUpSlack = 139
local AGuardInsignia = 140

function spawn(NPC)
	choice = math.random(1, 4)
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
	x = GetX(NPC)
	y = GetY(NPC)
	z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x + 7 , y, z - 8 , 1, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 5 , y, z - 10, 1, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 10, y, z + 9 , 1, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 5 , y, z + 8 , 1, math.random(5, 15))
end

function clockwise2(NPC)
	x = GetX(NPC)
 	y = GetY(NPC)
	z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x + 2 , y, z - 8 , 1, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 7 , y, z - 5 , 1, math.random(5, 15))
	MovementLoopAddLocation(NPC, x     , y, z + 6 , 1, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 9 , y, z + 1 , 1, math.random(5, 15))
end

function counter_clockwise1(NPC)
	x = GetX(NPC)
	y = GetY(NPC)
	z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x - 7 , y, z + 8 , 1, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 5 , y, z + 10, 1, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 10, y, z - 9 , 1, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 5 , y, z - 8 , 1, math.random(5, 15))
end

function counter_clockwise2(NPC)
	x = GetX(NPC)
	y = GetY(NPC)
	z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x - 2 , y, z + 8 , 1, math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 7 , y, z + 5 , 1, math.random(5, 15))
	MovementLoopAddLocation(NPC, x     , y, z - 6 , 1, math.random(5, 15))
	MovementLoopAddLocation(NPC, x - 9 , y, z - 1 , 1, math.random(5, 15))
end

function death(NPC, Spawn)
	if HasQuest(Spawn, PickingUpSlack) then
		if GetQuestStep(Spawn, PickingUpSlack) == 1 then
			AddLootItem(NPC, 11996)
		end
    elseif HasCompletedQuest(Spawn, PickingUpSlack) and not HasCompletedQuest(Spawn, AGuardInsignia) and not HasQuest(Spawn, AGuardInsignia) then
        local chance = math.random(100)
		if not HasItem(Spawn, 2333) and chance <= 45 then
			AddLootItem(NPC, 2333)
		end
	end
end