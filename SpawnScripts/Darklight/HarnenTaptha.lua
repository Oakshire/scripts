--[[
	Script Name	: SpawnScripts/Darklight/HarnenTaptha.lua
	Script Purpose	: Harnen Taptha 
	Script Author	: John Adams
	Script Date	: 2009.01.31
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, 99) and GetQuestStep(Spawn, 99) == 1 then
		WhatDoYouWant(NPC, Spawn, conversation)
	else
		Say(NPC, "Go away, go away, go away, go away!", Spawn)
	end
end

function WhatDoYouWant(NPC, Spawn, conversation)
	PlayFlavor(NPC, "voiceover/english/neriak/harnen_taptha/darklight_wood/tvatar_post/laexyra/harnen/harnen000.mp3", "", "", 2511697998, 3854280665, Spawn)
	AddConversationOption(conversation, "I have a message for you.", "dlg_2_1")
	StartConversation(conversation, NPC, Spawn, "What? What is it?! What do you want?!")
end

function dlg_2_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/neriak/harnen_taptha/darklight_wood/tvatar_post/laexyra/harnen/harnen001.mp3", "", "", 1833587639, 1382963065, Spawn)
	AddConversationOption(conversation, "Laexyra Y'Barriath wanted me to remind you that she was right.", "dlg_2_2")
	StartConversation(conversation, NPC, Spawn, "Oh? Maybe this is about those mercenaries that failed to show.")
end

function dlg_2_2(NPC, Spawn)
	SetStepComplete(Spawn, 99, 1)
	SpawnSet(NPC, "attackable", 1)
	SpawnSet(NPC, "show_level", 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Harnen...")
	StartConversation(conversation, NPC, Spawn, "...")
end

function healthchanged(NPC, Spawn)
	current_hp = GetHP(NPC)
	max_hp = GetMaxHP(NPC)
	
	if (current_hp <= (max_hp *2)) then
		choice = math.random(1, 2)
		if choice == 1 then
			Say(NPC, "For Thule's sake!", Spawn)
		else
			PlayFlavor(NPC, "voiceover/english/ghost_human_base_1/ft/ghost/ghost_human_base_1_1_halfhealth_gm_8bdfff2d.mp3", "I won't miss again!", "", 1970756563, 618808961, Spawn)
		end
	end
end