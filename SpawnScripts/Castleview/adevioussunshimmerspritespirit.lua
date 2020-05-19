--[[
	Script Name	: SpawnScripts/Castleview/adevioussunshimmerspritespirit.lua
	Script Purpose	: a devious sunshimmer sprite spirit 
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local TheCommune = 226

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
	if HasQuest(Spawn, TheCommune) and GetQuestStep(Spawn, TheCommune) == 1 then
		AddSpawnAccess(NPC, Spawn)
	end
end

function LeaveRange(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	
	if HasQuest(Spawn, TheCommune) then
		if GetQuestStep(Spawn, TheCommune) == 1 then
			ForWhatIHaveDone(NPC, Spawn)
		else
			Say(NPC, "For what I have done there is no atonement.", Spawn)
		end
	end
end

function ForWhatIHaveDone(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_devious_sunshimmer_sprite_spirit/qey_village04/quests/sprite/sprite_000.mp3", "", "", 10752592, 2895198222, Spawn)
	AddConversationOption(conversation, "What have you done?", "dlg_24_1")
	StartConversation(conversation, NPC, Spawn, "For what I have done there is no atonement.")
end

function dlg_24_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_devious_sunshimmer_sprite_spirit/qey_village04/quests/sprite/sprite_001.mp3", "", "", 3975280832, 3208663156, Spawn)
	AddConversationOption(conversation, "Why were you corrupted?", "dlg_24_2")
	StartConversation(conversation, NPC, Spawn, "I have fallen to corruption. I will never see Oakmyst Forest again. This is a sad day.")
end

function dlg_24_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_devious_sunshimmer_sprite_spirit/qey_village04/quests/sprite/sprite_002.mp3", "", "", 3139966243, 521548245, Spawn)
	AddConversationOption(conversation, "What do you remember from when you were corrupted?", "dlg_24_3")
	StartConversation(conversation, NPC, Spawn, "I do not know. It was not my choice, if that is what you are asking.")
end

function dlg_24_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_devious_sunshimmer_sprite_spirit/qey_village04/quests/sprite/sprite_003.mp3", "", "", 2953330382, 2257771207, Spawn)
	AddConversationOption(conversation, "A green thread?", "dlg_24_4")
	StartConversation(conversation, NPC, Spawn, "Very little. The memories are dark and hazy. Through it all the only tangible thing I recall is a single, green thread, tugging at me always.")
end

function dlg_24_4(NPC, Spawn)
	SetStepComplete(Spawn, TheCommune, 1)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/a_devious_sunshimmer_sprite_spirit/qey_village04/quests/sprite/sprite_004.mp3", "", "", 3927425201, 2478568698, Spawn)
	AddConversationOption(conversation, "Very well.")
	AddConversationOption(conversation, "Very well, Tunare be with you.")
	StartConversation(conversation, NPC, Spawn, "I must go now. Tunare be with you, Koada'Dal. I will attend to this Green Wisp, it is the least I can do. Please, I must be alone.")
end