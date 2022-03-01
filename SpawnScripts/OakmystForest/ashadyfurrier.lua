--[[
    Script Name    : SpawnScripts/Oakmyst/ashadyfurrier.lua
    Script Author  : Dorbin
    Script Date    : 2022.01.15
    Script Purpose : Ground Roaming and emote
                   : 
--]]

function spawn(NPC)
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

function gethealth(NPC)
   local choice =  math.random(1,100)
    if choice <=25 and GetMaxHP(NPC) <=25 then
        PlayFlavor(NPC, "voiceover/english/optional3/halfelf_base_2/ft/halfelf/halfelf_base_2_1_death_gf_e2b358c4.mp3", "We have no hope. We must withdraw!", "", 3383222805, 3217906425, Spawn)
        else
        end
end

function Action(NPC)
    local choice2 = MakeRandomInt(1, 4)
    if choice2 == 1 then
        PlayFlavor(NPC, "", "", "peer", 0, 0, Spawn)
    elseif choice2 == 2 then
        PlayFlavor(NPC, "", "", "stretch", 0, 0, Spawn)
    elseif choice2 == 3 then
        PlayFlavor(NPC, "", "", "yawn", 0, 0, Spawn)
    elseif choice2 == 4 then
        PlayFlavor(NPC, "", "", "2809", 0, 0, Spawn)
    end
end   

function clockwise1(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x + 1.5 , y, z - 2 , 1, math.random(2, 15))
	MovementLoopAddLocation(NPC, x - .5 , y, z - 3, 1, math.random(2, 15))
	MovementLoopAddLocation(NPC, x - 3, y, z + 2.5 , 1, math.random(2, 15))
	MovementLoopAddLocation(NPC, x     , y, z , 0 , math.random(5, 15))
	AddTimer(NPC, 6, "Action")
	MovementLoopAddLocation(NPC, x + .5 , y, z + 2 , 1, math.random(2, 15))


        --MovementLoopAddLocation(NPC, x + 3 , y, z - 4 , 1, math.random(2, 5))
	--MovementLoopAddLocation(NPC, x - 1 , y, z - 6, 1, math.random(2, 5))
	--MovementLoopAddLocation(NPC, x - 6, y, z + 5 , 1, math.random(2, 5))
	--MovementLoopAddLocation(NPC, x + 1 , y, z + 4 , 1, math.random(2, 5))
end

function clockwise2(NPC)
	local x = GetX(NPC)
 	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x + 1 , y, z - 2 , 1, math.random(2, 15))
	MovementLoopAddLocation(NPC, x - 3.5 , y, z - .5 , 1, math.random(2, 10))
	MovementLoopAddLocation(NPC, x     , y, z + 1 , 1, math.random(2, 15))
	AddTimer(NPC, 6, "Action")
	MovementLoopAddLocation(NPC, x     , y, z , 0 , math.random(5, 15))
	MovementLoopAddLocation(NPC, x + 2.5 , y, z + .5 , 1, math.random(2, 10))
end

function counter_clockwise1(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x - 1.5 , y, z + 1 , 1, math.random(2, 15))
	MovementLoopAddLocation(NPC, x     , y, z , 0 , math.random(5, 15))
	AddTimer(NPC, 6, "Action")
	MovementLoopAddLocation(NPC, x + .5 , y, z + 3, 1, math.random(2, 15))
	MovementLoopAddLocation(NPC, x + 2, y, z - 2.5 , 1, math.random(2, 10))
	MovementLoopAddLocation(NPC, x - .5 , y, z - 2 , 1, math.random(2, 10))
end

function counter_clockwise2(NPC)
	local x = GetX(NPC)
	local y = GetY(NPC)
	local z = GetZ(NPC)
	MovementLoopAddLocation(NPC, x - 1 , y, z + 2 , 1, math.random(2, 10))
	MovementLoopAddLocation(NPC, x + 1.5 , y, z + .5 , 1, math.random(2, 10))
	MovementLoopAddLocation(NPC, x     , y, z - 1 , 1, math.random(2, 15)) 
	MovementLoopAddLocation(NPC, x     , y, z , 0 , math.random(5, 15))
	AddTimer(NPC, 6, "Action")
	MovementLoopAddLocation(NPC, x - 2.5 , y, z - .5 , 1, math.random(2, 10))
end

