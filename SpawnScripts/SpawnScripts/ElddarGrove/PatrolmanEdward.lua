--[[
	Script Name	: SpawnScripts/ElddarGrove/PatrolmanEdward.lua
	Script Purpose	: Patrolman Edward <Guard>
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_d38d1fff.mp3", "Ah, what have we here? Glad to see you endured the journey here, adventurer.", "wave", 2806352129, 3453714070, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_7e3b456a.mp3", "Hail, pleasure to meet you.", "agree", 471367832, 2417424572, Spawn)
	else
	end

end

