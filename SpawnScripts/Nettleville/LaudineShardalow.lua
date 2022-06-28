--[[
	Script Name	: SpawnScripts/Nettleville/LaudineShardalow.lua
	Script Purpose	: Laudine Shardalow 
	Script Author	: Scatman
	Script Date	: 2009.08.08
	Script Notes	: 
--]]

local QUEST_3_FROM_HELAIN = 297
local QUEST_4_FROM_JOHFRIT = 298

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_4_FROM_JOHFRIT) and GetQuestStep(Spawn, QUEST_4_FROM_JOHFRIT) == 5 then
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/laudine_shardalow/qey_village01/quests/newbie_path_human/laudineshardalow014.mp3", "", "", 3899128570, 664520913, Spawn)
		AddConversationOption(conversation, "He did indeed. And that is why I am here.", "dlg_32_1")
		StartConversation(conversation, NPC, Spawn, "Didn't Johfrit Gythell have some work for you? ")
	elseif HasQuest(Spawn, QUEST_3_FROM_HELAIN) then
		if GetQuestStep(Spawn, QUEST_3_FROM_HELAIN) == 4 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/laudine_shardalow/qey_village01/quests/newbie_path_human/laudineshardalow001.mp3", "", "hello", 533537902, 3419616012, Spawn)
			AddConversationOption(conversation, "Yes, and I feel like I am getting to know it rather quickly.", "dlg_23_1")
			StartConversation(conversation, NPC, Spawn, "Hail, friend. I do not recognize you. New to these parts? ")
		else
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/laudine_shardalow/qey_village01/quests/newbie_path_human/laudineshardalow014.mp3", "", "ponder", 3899128570, 664520913, Spawn)
			AddConversationOption(conversation, "I have forgotten where he was.", "Forgot")
			StartConversation(conversation, NPC, Spawn, "Didn't Johfrit Gythell have some work for you? ")
		end
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/laudine_shardalow/qey_village01/quests/newbie_path_human/laudineshardalow011.mp3", "", "agree", 914739778, 33666592, Spawn)
		AddConversationOption(conversation, "And to you, madam.")
		StartConversation(conversation, NPC, Spawn, "It is a beautiful day! I hope the gods are smiling upon you.")
	end
end

function dlg_23_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/laudine_shardalow/qey_village01/quests/newbie_path_human/laudineshardalow002.mp3", "", "agree", 3635283512, 863467573, Spawn)
	AddConversationOption(conversation, "Yes, in fact it was Helain Conyers' advice that I come to you. ", "dlg_23_2")
	StartConversation(conversation, NPC, Spawn, "Met many others? ")
end

function dlg_23_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/laudine_shardalow/qey_village01/quests/newbie_path_human/laudineshardalow003.mp3", "", "", 2440988908, 3275070122, Spawn)
	AddConversationOption(conversation, "No thanks, it took me forever to find them all. ", "dlg_23_3")
	AddConversationOption(conversation, "I'd do just that, if you were willing to pay me.", "dlg_23_4")
	StartConversation(conversation, NPC, Spawn, "Ah, Helain.  I like her.  You would do well to take a page from her book.")
end

function dlg_23_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/laudine_shardalow/qey_village01/quests/newbie_path_human/laudineshardalow004.mp3", "", "no", 3519111089, 2079193245, Spawn)
	AddConversationOption(conversation, "Never mind.  She thought maybe you would have some work for me. ", "dlg_23_4")
	StartConversation(conversation, NPC, Spawn, "What? ")
end

function dlg_23_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/laudine_shardalow/qey_village01/quests/newbie_path_human/laudineshardalow005.mp3", "", "shrug", 23943986, 4145393969, Spawn)
	AddConversationOption(conversation, "Oh? ", "dlg_23_5")
	StartConversation(conversation, NPC, Spawn, "Ah, no I don't, but ya know what?  I bet I know who does. ")
end

function dlg_23_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/laudine_shardalow/qey_village01/quests/newbie_path_human/laudineshardalow006.mp3", "", "", 691896844, 1700542097, Spawn)
	AddConversationOption(conversation, "Sounds good... as long as he isn't a stable boy. ", "dlg_23_6")
	StartConversation(conversation, NPC, Spawn, "Go speak to Johfrit Gythell.  He may have some work, as he always needs a hand.")
end

function dlg_23_6(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_3_FROM_HELAIN, 4)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/laudine_shardalow/qey_village01/quests/newbie_path_human/laudineshardalow007.mp3", "", "chuckle", 300914977, 1228551584, Spawn)
	AddConversationOption(conversation, "All right. Thank you!")
	StartConversation(conversation, NPC, Spawn, "Ha! No, you need not worry about that. You should find him near the Golden Scabbard armory. ")
end

function Forgot(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you, again!")
	StartConversation(conversation, NPC, Spawn, "Oh. You should find him near the Golden Scabbard Armory.")
end

function dlg_32_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/laudine_shardalow/qey_village01/quests/newbie_path_human/laudineshardalow015.mp3", "", "", 1695366273, 222194149, Spawn)
	AddConversationOption(conversation, "Yes, madam. For a price.", "dlg_32_2")
	StartConversation(conversation, NPC, Spawn, "Oh, good.  You have the ale for me, then?")
end

function dlg_32_2(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_4_FROM_JOHFRIT, 5)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/laudine_shardalow/qey_village01/quests/newbie_path_human/laudineshardalow016.mp3", "", "thanks", 4035243333, 3360697754, Spawn)
	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "A price I am very willing to pay.  Pleasure doing business with you.")
end