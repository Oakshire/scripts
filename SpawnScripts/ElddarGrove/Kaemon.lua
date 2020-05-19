--[[
	Script Name	: SpawnScripts/ElddarGrove/Kaemon.lua
	Script Purpose	: Kaemon 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_3fc546db.mp3", "As a citizen of the mighty city, Qeynos, I greet you openly.", "salute", 2645256785, 1334313741, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_13b79d2d.mp3", "Welcome...welcome traveler, to the fair city of Qeynos! My, isn't it a magnificent day?", "hello", 3746934207, 794965138, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_d38d1fff.mp3", "Ah, what have we here? Glad to see you endured the journey here, adventurer.", "wave", 2806352129, 3453714070, Spawn)
	else
	end

end

