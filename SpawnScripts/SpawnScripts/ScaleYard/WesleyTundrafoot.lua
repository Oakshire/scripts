--[[
	Script Name	: SpawnScripts/ScaleYard/WesleyTundrafoot.lua
	Script Purpose	: Wesley Tundrafoot 
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
local QUEST_1 = 341

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	if HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/wesley_tundrafoot/fprt_hood06/rcp_wesley001.mp3", "", "", 2865891538, 1410389644, Spawn)
		AddConversationOption(conversation, "I'm afraid to say you won't be slaying anything, Wesley. It looks as though the Freeport Militia wants to speak to you about the broken furniture in Guard Captain Issik's office.", "dlg_12_1")
		StartConversation(conversation, NPC, Spawn, "Who's that there? Marcus? Is it time to fight? Point me to something and I'll gladly snap its neck!")
	else
		Say(NPC, "I find the lack of snow in this place... unsettling.")
	end
end

function dlg_12_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/wesley_tundrafoot/fprt_hood06/rcp_wesley002.mp3", "", "", 692581137, 3283910777, Spawn)
	AddConversationOption(conversation, "Well, it may just be a rumor but... Tristan O'Rilley definitely ratted you out.", "dlg_12_2")
	StartConversation(conversation, NPC, Spawn, "What?! I never even set foot in that lizard's office. Who told the Militia I was to blame? C'mon, out with it, lizard. Tell me!")
end

function dlg_12_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/wesley_tundrafoot/fprt_hood06/rcp_wesley003.mp3", "", "", 2622307148, 2901004163, Spawn)
	AddConversationOption(conversation, "I must take my leave. Good day.", "dlg_12_3")
	StartConversation(conversation, NPC, Spawn, "WHAT!? That back-stabbin' under-handed kilt yanker! This is how he repays my tutelage? That's it, I'm going to beat him so hard he'll... I'll pummel him till he's.. And then I'm gonna...")
	SetStepComplete(Spawn, QUEST_1, 2)
end

function dlg_99_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Quests", "dlg_99_2")
	StartConversation(conversation, NPC, Spawn, "What would you like?")
end

--[[ raw_conversations
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/wesley_tundrafoot/fprt_hood06/quest_wesley_idle_text_f22e7e7b.mp3", "I find the lack of snow in this place... unsettling.", "", 3738848352, 3752147462, Spawn)
--]]

