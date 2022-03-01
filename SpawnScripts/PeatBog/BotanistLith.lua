--[[
	Script Name	: SpawnScripts/PeatBog/BotanistLith.lua
	Script Purpose	: Botanist Lith 
	Script Author	: scatman
	Script Date	: 2009.05.10
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local KERRA = 11
local QUEST_1 = 1

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_1) then
	elseif HasQuest(Spawn, QUEST_1) then
	else
		if GetRace(Spawn) == KERRA then
		else
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh000.mp3", "The plant life here is absolutely astounding.", "", 1130721210, 2119698425, Spawn)
		end
	end

		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh_lakosha000.mp3", "", "", 1585352530, 1011819212, Spawn)
	AddConversationOption(conversation, "Lakosha Maera sent me.", "dlg_0_1")
	StartConversation(conversation, NPC, Spawn, "The plant life here is absolutely astounding.")
end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh_lakosha001.mp3", "", "", 2621096962, 3551613449, Spawn)
	AddConversationOption(conversation, "Unfortunate news. Someone in Nettleville attempted to perform a Pa'Rok ceremony with tainted dirt.", "dlg_0_2")
	StartConversation(conversation, NPC, Spawn, "Ah, wonderful. I have not spoken to her in quite some time. What news does she send?")
end

function dlg_0_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh_lakosha002.mp3", "", "", 619900214, 1453098884, Spawn)
	AddConversationOption(conversation, "No, but the ceremony was for naught. Lakosha asked me to visit you because the dirt that corrupted the ceremony came from Peat Bog.", "dlg_0_3")
	StartConversation(conversation, NPC, Spawn, "I'm not familiar with that ceremony, was anybody hurt?")
end

function dlg_0_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh_lakosha003.mp3", "", "", 418560600, 341427965, Spawn)
	AddConversationOption(conversation, "How so?", "dlg_0_4")
	StartConversation(conversation, NPC, Spawn, "Oh, I see. I guess that agrees with my findings, unfortunately.")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/botanist_lith/qey_adv04_bog/quests/nareh/nareh000.mp3", "The plant life here is absolutely astounding.", "", 1130721210, 2119698425, Spawn)
--]]

