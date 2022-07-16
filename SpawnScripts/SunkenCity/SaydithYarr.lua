--[[
	Script Name	: SpawnScripts/SunkenCity/SaydithYarr.lua
	Script Purpose	: Saydith Yarr 
	Script Author	: Scatman
	Script Date	: 2009.07.28
	Script Notes	: 
--]]

local QUEST_1_FROM_THORSON = 376

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/saydith_yarr/fprt_adv01_sunken/saydith_yarr000.mp3", "", "", 1548752498, 2730978939, Spawn)
	AddConversationOption(conversation, "Where am I?", "dlg_1_2")
	AddConversationOption(conversation, "What do you mean by 'dark and light'?", "dlg_1_3")
	AddConversationOption(conversation, "What tragedies?", "dlg_1_1")
	AddConversationOption(conversation, "I know all I need to about this place.")
	StartConversation(conversation, NPC, Spawn, "Searched this place I have.  Seen the dark and the light.  Know the stories and the tragedies.")
end

function dlg_1_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/saydith_yarr/fprt_adv01_sunken/saydith_yarr001.mp3", "", "", 2390191821, 3206926055, Spawn)
	AddConversationOption(conversation, "What do you mean by 'dark and light'?", "dlg_1_3")
	AddConversationOption(conversation, "What tragedies?", "dlg_1_1")
	AddConversationOption(conversation, "I know all I need to about this place.")
	StartConversation(conversation, NPC, Spawn, "You're on the docks of the Sunken City.")
end

function dlg_1_3(NPC, Spawn)
	if HasQuest(Spawn, QUEST_1_FROM_THORSON) and GetQuestStep(Spawn, QUEST_1_FROM_THORSON) == 1 then
		SetStepComplete(Spawn, QUEST_1_FROM_THORSON, 1)
	end
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/saydith_yarr/fprt_adv01_sunken/saydith_yarr003.mp3", "", "", 3245604695, 2963905971, Spawn)
	AddConversationOption(conversation, "Where am I?", "dlg_1_2")
	AddConversationOption(conversation, "What tragedies?", "dlg_1_1")
	AddConversationOption(conversation, "I know all I need to about this place.")
	StartConversation(conversation, NPC, Spawn, "Things change here when it gets cold and dark.  Zombies crawl from the shadows to drag the living back with them to their watery grave.  Search for the cross if you are looking for death.")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/saydith_yarr/fprt_adv01_sunken/saydith_yarr002.mp3", "", "", 2458221458, 1657163845, Spawn)
	AddConversationOption(conversation, "Where am I?", "dlg_1_2")
	AddConversationOption(conversation, "What do you mean by 'dark and light'?", "dlg_1_3")
	AddConversationOption(conversation, "I know all I need to about this place.")
	StartConversation(conversation, NPC, Spawn, "This place was once a district of Freeport, much like the others.  Those that lived here were swallowed up by the seas and dragged to the bottom of the ocean, doomed to an eternal existence under the crushing depths.")
end