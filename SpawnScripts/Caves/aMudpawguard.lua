--[[
	Script Name	: SpawnScripts/Caves/aMudpawguard.lua
	Script Purpose	: a Mudpaw guard 
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


--[[function attacked(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_aggro_75cd5d19.mp3", "Not allowed here!", "", 1292107958, 2335134714)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_1_aggro_d81be55c.mp3", "Bite! Show sharp teeth!", "", 612586564, 102929785)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_3_aggro_d81be55c.mp3", "Bite! Show sharp teeth!", "", 3276849474, 2846177216)
	else
		PlayFlavor(NPC, "voiceover/english/gnoll_base_1/ft/gnoll/gnoll_base_1_2_death_9c1f07cb.mp3", "Another member of the pack down!", "", 3426629421, 3660282518)
	end

end
--]]
