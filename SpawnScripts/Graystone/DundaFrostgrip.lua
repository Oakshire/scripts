--[[
	Script Name	: SpawnScripts/Graystone/DundaFrostgrip.lua
	Script Purpose	: Dunda Frostgrip 
	Script Author	: Scatman
	Script Date	: 2009.10.05
	Script Notes	: 
--]]

-- Quest ID's
local DWARF_MENTOR_QUEST_2 = 285
local A_TIME_FOR_FIGHTING = 289

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, A_TIME_FOR_FIGHTING) then
		Say(NPC, "Don't say a word...", Spawn)
	elseif HasQuest(Spawn, A_TIME_FOR_FIGHTING) then
		WhatYaNeed(NPC, Spawn)
	elseif HasQuest(Spawn, DWARF_MENTOR_QUEST_2) and not QuestStepIsComplete(Spawn, DWARF_MENTOR_QUEST_2, 4) then
		WhatYaNeedDwarfMentor(NPC, Spawn, conversation)
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/dunda_frostgrip/qey_village03/quest_dunda_frostgrip_notonquest_76053892.mp3", "Speak to me when I'm not busy.", "", 2450838370, 1763279146, Spawn)
	end
end

function healthchanged(NPC, Spawn)
	local hp_percent = GetHP(NPC) / GetMaxHP(NPC)
	if hp_percent <= 0.25 then
		SpawnSet(NPC, "attackable", 0)
		SpawnSet(NPC, "show_level", 0)
		AddTimer(NPC, 500, "StopAttacking", 1, Spawn)		
	end
end

function StopAttacking(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/dunda_frostgrip/qey_village03/quest_dunda_frostgrip_fightover_b27b5c58.mp3", "I'm done with this.", "", 3523983921, 3545323168, Spawn)
	ClearHate(NPC)
	ClearEncounter(NPC)
end

function WhatYaNeed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not QuestStepIsComplete(Spawn, A_TIME_FOR_FIGHTING, 3) then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/dunda_frostgrip/qey_village03/quests/dunda_frostgrip/dunda_frostgrip008.mp3", "", "", 2498530124, 1746867227, Spawn)
		AddConversationOption(conversation, "Wow, Mav was right about your face.", "dlg_12_1")
		AddConversationOption(conversation, "Is that a beard you're growing?", "dlg_9_1")
		AddConversationOption(conversation, "Wow, how did you get such huge feet?", "dlg_10_1")
		AddConversationOption(conversation, "You don't look nearly as tough as they said you would be.", "dlg_11_1")
		StartConversation(conversation, NPC, Spawn, "What d'ya need?")
	else
		Say(NPC, "Don't say a word...", Spawn)
	end
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/dunda_frostgrip/qey_village03/quests/dunda_frostgrip/dunda_frostgrip008answer1.mp3", "", "", 3631592040, 195858381, Spawn)
	AddConversationOption(conversation, "Hmm...")
	StartConversation(conversation, NPC, Spawn, "I doubt it...")
end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/dunda_frostgrip/qey_village03/quests/dunda_frostgrip/dunda_frostgrip008answer2.mp3", "", "", 2237464189, 736160534, Spawn)
	AddConversationOption(conversation, "I see.")
	StartConversation(conversation, NPC, Spawn, "From stompin' on people who ask stupid questions.")
end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/dunda_frostgrip/qey_village03/quests/dunda_frostgrip/dunda_frostgrip008answer3.mp3", "", "", 1987182135, 3106357829, Spawn)
	AddConversationOption(conversation, "All right.")
	StartConversation(conversation, NPC, Spawn, "I don't do demonstrations.")
end

function dlg_12_1(NPC, Spawn)
	SetStepComplete(Spawn, A_TIME_FOR_FIGHTING, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	SpawnSet(NPC, "attackable", 1)
	SpawnSet(NPC, "show_level", 1)
	AddHate(Spawn, NPC, 1)

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/dunda_frostgrip/qey_village03/quests/dunda_frostgrip/dunda_frostgrip008rightanswer.mp3", "", "", 3574859245, 2281348015, Spawn)
	AddConversationOption(conversation, "Maybe I will, maybe I won't!")
	StartConversation(conversation, NPC, Spawn, "You're going to regret saying that!")
end

---------------------------------------------------------------------------------------------------
--								DWARF_MENTOR_QUEST_2
---------------------------------------------------------------------------------------------------

function WhatYaNeedDwarfMentor(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/dunda_frostgrip/qey_village03/quests/dunda_frostgrip/dunda_frostgrip001.mp3", "", "", 3913280792, 2412954203, Spawn)
	AddConversationOption(conversation, "I'm here on behalf of Mav Boilfist.", "dlg_19_1")
	StartConversation(conversation, NPC, Spawn, "What d'ya need?")
end

function dlg_19_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/dunda_frostgrip/qey_village03/quests/dunda_frostgrip/dunda_frostgrip002.mp3", "", "sniff", 898341792, 808534895, Spawn)
	AddConversationOption(conversation, "What do you mean?", "dlg_19_2")
	StartConversation(conversation, NPC, Spawn, "Ah, now there's a name I can never hear too little of.")
end

function dlg_19_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/dunda_frostgrip/qey_village03/quests/dunda_frostgrip/dunda_frostgrip003.mp3", "", "shakefist", 472358004, 1704786028, Spawn)
	AddConversationOption(conversation, "Retaliate?", "dlg_19_3")
	StartConversation(conversation, NPC, Spawn, "Every time I hear about her it's about some great, new thing she's doing. Which of course means I have to retaliate.")
end

function dlg_19_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/dunda_frostgrip/qey_village03/quests/dunda_frostgrip/dunda_frostgrip004.mp3", "", "glare", 2206438265, 2359391170, Spawn)
	AddConversationOption(conversation, "She brewed some of her family's recipe.", "dlg_19_4")
	StartConversation(conversation, NPC, Spawn, "Aye! If I don't one-up her I run the risk of getting one-upped twice in a row, can't have that. So, tell me, what great, new thing has Mav done now?")
end

function dlg_19_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/dunda_frostgrip/qey_village03/quests/dunda_frostgrip/dunda_frostgrip005.mp3", "", "boggle", 2257066250, 240363088, Spawn)
	AddConversationOption(conversation, "I have some of it right here.", "dlg_19_5")
	StartConversation(conversation, NPC, Spawn, "She didn't! Ooh she's just looking for trouble now. Where is she? I'll pound the brew right now!")
end

function dlg_19_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/dunda_frostgrip/qey_village03/quests/dunda_frostgrip/dunda_frostgrip006.mp3", "", "", 886091575, 2730616060, Spawn)
	AddConversationOption(conversation, "Here you go. Be careful.", "dlg_19_6")
	StartConversation(conversation, NPC, Spawn, "Ah, give it to me!")
end

function dlg_19_6(NPC, Spawn)
	SetStepComplete(Spawn, DWARF_MENTOR_QUEST_2, 4)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/dunda_frostgrip/qey_village03/quests/dunda_frostgrip/dunda_frostgrip007.mp3", "", "", 1318899535, 405657367, Spawn)
    PlayAnimation(NPC,11422)
	AddConversationOption(conversation, "All right. I'll be leaving now.")
	StartConversation(conversation, NPC, Spawn, "Ahhh... To Drunder with her, she was right. This is delicious. Do NOT tell her I said that!")
end