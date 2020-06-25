--[[
	Script Name	: SpawnScripts/WillowWood/LyssiaDelnara.lua
	Script Purpose	: Lyssia Delnara 
	Script Author	: Scatman
	Script Date	: 2009.09.15
	Script Notes	: 
--]]

local HALFELF_MENTOR_QUEST_2 = 219

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasCompletedQuest(Spawn, HALFELF_MENTOR_QUEST_2) then
		Say(NPC, "I hope you live a happy life.", Spawn)
	elseif HasQuest(Spawn, HALFELF_MENTOR_QUEST_2) and GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_2) >= 2 then
		OnQuest(NPC, Spawn, conversation)
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lyssia_delnara/qey_village05/quests/lyssia_delnara/lyssia_delnara001.mp3", "", "", 3050771761, 2638277090, Spawn)
		AddConversationOption(conversation, "And a good day to you, farewell.")
		StartConversation(conversation, NPC, Spawn, "Greetings.")
	end
end

function OnQuest(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, HALFELF_MENTOR_QUEST_2) == 2 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lyssia_delnara/qey_village05/quests/lyssia_delnara/lyssia_delnara001.mp3", "", "", 3050771761, 2638277090, Spawn)
		AddConversationOption(conversation, "I just spoke with Milo.", "dlg_22_1")
		AddConversationOption(conversation, "And a good day to you, farewell.")
		StartConversation(conversation, NPC, Spawn, "Greetings.")
	else
		Say(NPC, "I hope you live a happy life.", Spawn)
	end
end

function dlg_22_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lyssia_delnara/qey_village05/quests/lyssia_delnara/lyssia_delnara002.mp3", "", "", 531367503, 758878008, Spawn)
	AddConversationOption(conversation, "He was going on and on about how great you are.", "dlg_22_2")
	AddConversationOption(conversation, "I will return to speak of this later.")
	StartConversation(conversation, NPC, Spawn, "He is delightful, isn't he?")
end

function dlg_22_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lyssia_delnara/qey_village05/quests/lyssia_delnara/lyssia_delnara003.mp3", "", "", 3637545850, 1647953464, Spawn)
	AddConversationOption(conversation, "He says he feels amazingly lucky, he doesn't consider himself all that exciting.", "dlg_22_3")
	AddConversationOption(conversation, "Sorry, I'll be going now.")
	StartConversation(conversation, NPC, Spawn, "Oh? How embarrassing.")
end

function dlg_22_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lyssia_delnara/qey_village05/quests/lyssia_delnara/lyssia_delnara004.mp3", "", "", 3549663083, 2368150611, Spawn)
	AddConversationOption(conversation, "I have indeed, I know exactly how you feel.", "dlg_22_4")
	AddConversationOption(conversation, "I may have, though I'm not certain.", "dlg_22_4")
	AddConversationOption(conversation, "No, I have not, but I hope to soon.", "dlg_22_4")
	AddConversationOption(conversation, "No, I am in no hurry to find love.", "dlg_22_4")
	AddConversationOption(conversation, "No. I have no need for it.")
	StartConversation(conversation, NPC, Spawn, "That sounds just like him, he never could see his own worth very well. I guess that's part of why I like him, it's very cute and modesty is very attractive. Tell me, have you found love?")
end

function dlg_22_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lyssia_delnara/qey_village05/quests/lyssia_delnara/lyssia_delnara005.mp3", "", "", 2455179425, 1822326590, Spawn)
	AddConversationOption(conversation, "[continue listening]", "dlg_22_5")
	StartConversation(conversation, NPC, Spawn, "It comes to all of us in time, whether we wish it or not. I'm just happy my time has come. Oh, Milo. He really has no idea how incredible he is. Have you seen him work? His strength is amazing. And yet he's so careful and compassionate when he interacts with others.")
end

function dlg_22_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lyssia_delnara/qey_village05/quests/lyssia_delnara/lyssia_delnara005a.mp3", "", "", 713303744, 2327717146, Spawn)
	AddConversationOption(conversation, "I am very happy for you.", "dlg_22_6")
	StartConversation(conversation, NPC, Spawn, "He doesn't arm wrestle, or squeeze hard during a handshake. He knows just how to hold a woman to make her feel safe and warm. He may not see it himself, but he is very receptive to the needs of others. How could I not love him?")
end

function dlg_22_6(NPC, Spawn)
	SetStepComplete(Spawn, HALFELF_MENTOR_QUEST_2, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/lyssia_delnara/qey_village05/quests/lyssia_delnara/lyssia_delnara006.mp3", "", "", 3882102131, 2649176241, Spawn)
	AddConversationOption(conversation, "I agree. Thank you for your time.")
	StartConversation(conversation, NPC, Spawn, "Thank you very much. It's great to share joy with others.")
end