--[[
	Script Name	: SpawnScripts/Oakmyst/ScholarNeola.lua
	Script Purpose	: Scholar Neola 
	Script Author	: scatman
	Script Date	: 2009.05.08
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local QUEST_1 = 211

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/scholar_neola/qey_adv01_oakmyst/scholarneola000.mp3", "", "", 684527020, 3141115058, Spawn)
	if not HasCompletedQuest(Spawn, QUEST_1) and not HasQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "What is wrong with the sapling?", "dlg_3_1")
	elseif HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 3 then
		AddConversationOption(conversation, "I saved the sapling.", "SavedSapling")
	end
	AddConversationOption(conversation, "I will trod where I please. Goodbye! ")
	StartConversation(conversation, NPC, Spawn, "Why do you tread upon the fertile ground? Doing so taints the lustrous blades that our young sapling needs to grow.")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/scholar_neola/qey_adv01_oakmyst/scholarneola001.mp3", "", "", 4101705727, 2237841081, Spawn)
	AddConversationOption(conversation, "Is there anything I can do to help the sapling? ", "OfferQuest1")
	AddConversationOption(conversation, "Your sapling is not my problem. Farewell.")
	StartConversation(conversation, NPC, Spawn, "The young sapling is still weak. It feeds upon the mana of this thicket but needs greater nutrients to prosper in this woodland.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function SavedSapling(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I will speak to the judge.")
	StartConversation(conversation, NPC, Spawn, "The sapling has a young battle ahead to become a timber lord. Your help brings it closer to this goal. Now you must seek out the Judge. She awaits those who aid this forest.")
end