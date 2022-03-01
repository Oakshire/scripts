--[[
	Script Name	: SpawnScripts/Nettleville/BahatiLinnxar.lua
	Script Purpose	: Bahati Linnxar 
	Script Author	: Scatman
	Script Date	: 2008.10.08
	Script Notes	: 
--]]

local QUEST_3_FROM_HELAIN = 297

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_3_FROM_HELAIN) and GetQuestStep(Spawn, QUEST_3_FROM_HELAIN) >= 3 then
		if GetQuestStep(Spawn, QUEST_3_FROM_HELAIN) == 3 then
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bahati_linnxar/qey_village01/quests/newbie_path_human/bahatilinnxar001.mp3", "", "", 1302404372, 2531656487, Spawn)
			AddConversationOption(conversation, "Actually, I have come seeking work.  Helain Conyers thought you may have some work for me. ", "dlg_21_1")
			StartConversation(conversation, NPC, Spawn, "Take a look at the stock my colleague has. You'll never beat these prices in the city!")
		else
			PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bahati_linnxar/qey_village01/quests/newbie_path_human/bahatilinnxar005.mp3", "", "", 2124702134, 1087800456, Spawn)
			AddConversationOption(conversation, "And you, in yours, Bahati.")
			StartConversation(conversation, NPC, Spawn, "I wish you luck in your hunts, adventurer.")
		end
	else
		PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bahati_linnxar/qey_village01/quests/newbie_path_human/bahatilinnxar004.mp3", "", "", 4186730330, 845855960, Spawn)
		AddConversationOption(conversation, "Perhaps, I will.", "dlg_6_1")
		StartConversation(conversation, NPC, Spawn, "Take a look at the stock my colleague has. You'll never beat these prices in the city! ")
	end
end

function dlg_21_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bahati_linnxar/qey_village01/quests/newbie_path_human/bahatilinnxar002.mp3", "", "", 2304357496, 4139870, Spawn)
	AddConversationOption(conversation, "At least you find it then.  No work for me then, I suppose? ", "dlg_21_2")
	StartConversation(conversation, NPC, Spawn, "She did, eh?  She is a sweetie, but a bit of an oddball.  What is not to love about the hunt?  The hunt is where I find my inner peace! ")
end

function dlg_21_2(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_3_FROM_HELAIN, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/bahati_linnxar/qey_village01/quests/newbie_path_human/bahatilinnxar003.mp3", "", "", 1543408868, 3252040827, Spawn)
	AddConversationOption(conversation, "I understand.  Enjoy the day, Bahati.", "dlg_21_3")
	StartConversation(conversation, NPC, Spawn, "No, I have nothing to offer you. ")
end