--[[
	Script Name	: SpawnScripts/Oakmyst/BardrianVorsuth.lua
	Script Purpose	: Bardrian Vorsuth
	Script Author	: scatman
	Script Date	: 2009.05.04
	Modified  by    : Ememjr
	Modified Date   :2017.04.22
	Modified Noes   : correcte the conversation
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local QUEST_FROM_CHARLIN = 209

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, QUEST_FROM_CHARLIN) and GetQuestStep(Spawn, QUEST_FROM_CHARLIN) == 1 then
		WhatDoYaNeed(NPC, Spawn, conversation)
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bardrian_vorsuth/qey_adv01_oakmyst_revamp/qst_bardrian_notonquest_b22fa460.mp3", "Busy... Go away.", "", 1355174858, 967558565, Spawn)
	end
end

-----------------------------------------------------------------------------------------------------------
--					QUEST_FROM_CHARLIN
-----------------------------------------------------------------------------------------------------------

function WhatDoYaNeed(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bardrian_vorsuth/qey_adv01_oakmyst/quests/bardrian/bardrian000.mp3", "", "", 339572544, 1009095329, Spawn)
	AddConversationOption(conversation, "Lieutenant Charlin sent me in his place.", "dlg_5_1")
	StartConversation(conversation, NPC, Spawn, "What do ya need? I'm waiting for someone.")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bardrian_vorsuth/qey_adv01_oakmyst/quests/bardrian/bardrian001.mp3", "", "", 3275580861, 3455172409, Spawn)
	AddConversationOption(conversation, "What is it?", "dlg_5_2")
	StartConversation(conversation, NPC, Spawn, "I see. Well, then listen up. We've got an issue here. We found this box, no post markings at all, and finally our curiosity forced us to open it. Inside was this... machine.")
end

function dlg_5_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bardrian_vorsuth/qey_adv01_oakmyst/quests/bardrian/bardrian002.mp3", "", "", 133230117, 3607589031, Spawn)
	AddConversationOption(conversation, "Is there anything else of note?", "dlg_5_3")
	StartConversation(conversation, NPC, Spawn, "I have no idea. It looks to be some sort of power or speed variable control system, but that's just a rough guess. It could likely be plugged into any number of other devices, but by itself it isn't especially useful. That fact and the lack of markings on the box are what make it suspicious, and why we contacted Charlin.")
end

function dlg_5_3(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_FROM_CHARLIN, 1)

	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bardrian_vorsuth/qey_adv01_oakmyst/quests/bardrian/bardrian003.mp3", "", "", 917314149, 3791336463, Spawn)
	AddConversationOption(conversation, "It is more than enough. Thank you for your help.")
	StartConversation(conversation, NPC, Spawn, "Nope, but I figured this all was suspicious enough to get the guards interested.")
end
