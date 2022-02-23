--[[
	Script Name	: SpawnScripts/ForestRuins/IlaenLilac.lua
	Script Purpose	: Ilaen Lilac 
	Script Author	: John Adams
	Script Date	: 2008.09.19
	Script Notes	: Auto-Generated Conversation from PacketParser Data
	Note: The intro of this dialogue is messed up with random calls. Missing racial checks and quest flags.
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

--	choice = math.random(1,3)

--	if choice == 1 then
--		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins_revamp/qst_woodelf_ilaen_lilac_notonquest_ae7644e9.mp3", "There is no failing greater than a child unable to protect a parent.", "", 138794585, 337134419)
--	elseif choice == 2 then
--		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins_revamp/qst_woodelf_ilaen_lilac_ulinir_d84a1bb.mp3", "You are wise to know Ulinir is worth your time. Speak with me if you wish to use your wisdom for a greater good.", "", 1864539566, 4233668295)
--	else
--		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1005.mp3", "", "", 0, 0)
--	end

	AddConversationOption(conversation, "Save this land from what?", "dlg_11_1")
	StartConversation(conversation, NPC, Spawn, "If we do not work to save this land there are no others who will.")
	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins/quests/ilaen/ilaen005.mp3", "", "", 2448866303, 129613781, Spawn)
	
		AddConversationOption(conversation, "Yes, I found this arrow.", "dlg_15_1")
		StartConversation(conversation, NPC, Spawn, "Have you found a clue yet?")
	end

end

function dlg_11_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins/quests/ilaen/ilaen001.mp3", "", "", 4282317093, 61887410, Spawn)

	AddConversationOption(conversation, "What are you talking about?", "dlg_11_2")
	StartConversation(conversation, NPC, Spawn, "If you have not felt it yet you will soon. The movement, the sudden interest in this place by multiple parties, and the strange deaths of this land's inhabitants.")
end

function dlg_11_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins/quests/ilaen/ilaen002.mp3", "", "", 2492224424, 564822145, Spawn)

	AddConversationOption(conversation, "Killed by what?", "dlg_11_3")
	StartConversation(conversation, NPC, Spawn, "I do not believe this land's problems are enough to interest the Qeynos Guard, not yet lestways. But any child of Tunare who spends time here soon realizes there is something sinister in these lands. The deer of these parts are being slain at an alarming rate. Most of their deaths are obviously the cause of wolves or other predators, natural causes, but some of their bodies are left dead and intact.")
end

function dlg_11_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins/quests/ilaen/ilaen003.mp3", "", "", 1432167079, 3483891269, Spawn)

	AddConversationOption(conversation, "Yes, I am willing.", "dlg_11_4")
	AddConversationOption(conversation, "Sorry, no.")
	StartConversation(conversation, NPC, Spawn, "I do not know, but I believe they are being hunted for sport. They have wounds consistent with arrow fire, but I have yet to recover any clues. Would you be willing to help me search for a clue?")
end

function dlg_11_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins/quests/ilaen/ilaen003.mp3", "", "", 1432167079, 3483891269, Spawn)

	AddConversationOption(conversation, "I will return.", "dlg_11_5")
	StartConversation(conversation, NPC, Spawn, "Good. Go find the deer bodies that litter these lands. Ignore the bodies killed by predators, seek out only the intact bodies. Search them for clues: weapons, specific types of scars, anything that will help determine who is beind their death.")
end

function dlg_11_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins/quests/ilaen/ilaen004a.mp3", "", "", 1329725839, 577542302, Spawn)

	AddConversationOption(conversation, "Thank you.", "dlg_11_6")
	StartConversation(conversation, NPC, Spawn, "May you do so without coming to harm.")
end

function dlg_15_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins/quests/ilaen/ilaen006.mp3", "", "", 1191782376, 3783466405, Spawn)

	AddConversationOption(conversation, "Yes, from a dead deer.", "dlg_15_2")
	StartConversation(conversation, NPC, Spawn, "You found this arrow here? You are certain?")
end

function dlg_15_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/ilaen_lilac/qey_adv02_ruins/quests/ilaen/ilaen007.mp3", "", "", 4076027837, 3268404262, Spawn)

	AddConversationOption(conversation, "Alright, I shall.", "dlg_15_3")
	StartConversation(conversation, NPC, Spawn, "This arrow is of gnollish make. It may have gotten here by innocent means, or a gnoll may have brought it here. If the gnolls are moving in then the Qeynos Guard will be very interested. I want you to take this arrow to Lieutenant Germain. Tell him where you found it, he will be most interested to hear this.")
end
