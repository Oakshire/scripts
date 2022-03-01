--[[
	Script Name	: SpawnScripts/ScaleYard/AnthonyGlavias.lua
	Script Purpose	: Anthony Glavias 
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
local QUEST_4 = 343 --162 --Kill or be killed--

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
	
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if GetQuestStep(Spawn, QUEST_4) == 1 then 
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/anthony_glavias/fprt_hood06/rcp_anthony001.mp3", "", "", 3067586016, 4150767631, Spawn)
		AddConversationOption(conversation, "Who sent me is not important. All that matters is that your incompetence can no longer be tolerated. This is your last assignment Anthony.", "dlg_1_1")
		StartConversation(conversation, NPC, Spawn, "Who are you? Did Issik send you? Why was I told to guard this corner? This is the stupidest assignment I've ever been given.")
	else
		choice = math.random(1,2)

		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/anthony_glavias/fprt_hood06/quest_anthony_idle_text_4d8d8143.mp3", "What! Who? No you're not the person I'm supposed to talk to.", "", 1807765648, 2730794847, Spawn)
		else
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/anthony_glavias/fprt_hood06/quest_anthony_idle_text_cd460631.mp3", "Why I was instructed to guard this corner? I have no idea...", "", 3183193425, 4191883084, Spawn)
		end
	end
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/anthony_glavias/fprt_hood06/rcp_anthony002.mp3", "", "", 2414080442, 1536099757, Spawn)
	AddConversationOption(conversation, "Cease your banter draw your blade, fool!", "Combat")
	StartConversation(conversation, NPC, Spawn, "Step down citizen! No one fires Anthony Glavias besides me! Eh, well... not that I would fire myself that is... Bwah! ")
end

function Combat(NPC, Spawn)
	SetSpawn(NPC, attackable, 1)
	AddHate(NPC, Spawn, 100)
end


--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/anthony_glavias/fprt_hood06/quest_anthony_idle_text_cd460631.mp3", "Why I was instructed to guard this corner? I have no idea...", "", 3183193425, 4191883084, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/anthony_glavias/fprt_hood06/quest_anthony_idle_text_4d8d8143.mp3", "What! Who? No you're not the person I'm supposed to talk to.", "", 1807765648, 2730794847, Spawn)
--]]

