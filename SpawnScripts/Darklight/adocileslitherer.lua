--[[
    Script Name    : SpawnScripts/Darklight/adocileslitherer.lua
    Script Author  : fearfx
    Script Date    : 2017.01.21 10:01:20
    Script Purpose : 
                   : 
--]]

local InfantileIngredients = 157
local DarkLightZone = 034

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

function respawn(NPC)
	spawn(NPC)
end

function death(NPC, Spawn)
	if HasQuest(Spawn, InfantileIngredients) and GetQuestStep(Spawn, InfantileIngredients) == 1 then
			zone = GetZone(NPC)
			local spawnAmount = math.random(1, 3)
			x = GetX(NPC)
			y = GetY(NPC)
			z = GetZ(NPC)
			heading = GetHeading(NPC)
			while spawnAmount ~= 0 do
    			newSpawn = SpawnMob(zone, 341286, 1, x + math.random(-1, 1), y+ math.random(-1, 1), z+ math.random(-1, 1), heading+ math.random(-1, 1))
    			if newSpawn ~= nil then
    			    AddSpawnAccess(newSpawn, Spawn)
    			end
    			spawnAmount = spawnAmount - 1
    		end
	end
end