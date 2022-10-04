--[[
	Script Name	: SpawnScripts/Caves/aMudpawlookout.lua
	Script Purpose	: a Mudpaw lookout 
	Script Author	: LordPazuzu
	Script Date	: 10/4/2022
	Script Notes	: 
--]]


function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 8
    local level2 = 9
    local difficulty1 = 6
    local hp1 = 240
    local power1 = 100
    local difficulty2 = 6
    local hp2 = 290
    local power2 = 110
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end

end


function respawn(NPC, Spawn)
    spawn(NPC)
end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end







--[[function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_garbled_2f8caa7b.mp3", "Krovel grarggt ereverrrn", "", 3999652656, 427507713)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_garbled_2f8caa7b.mp3", "Krovel grarggt ereverrrn", "", 2385604574, 3717589402)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_aggro_fda03a16.mp3", "Spin, weave, dodge, attack!!!", "", 1347636574, 484324781)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_aggro_d81be55c.mp3", "Bite! Show sharp teeth!", "", 612586564, 102929785)
	else
	end

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Spin, weave, dodge, attack!!!", "", 1689589577, 4560189)
end
--]]
