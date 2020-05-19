--[[
	Script Name	: SpawnScripts/Oakmyst/EmpressAnassa.lua
	Script Purpose	: Empress Anassa 
	Script Author	: scatman
	Script Date	: 2009.05.09
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local QUEST_FROM_NEOLA = 211
local QUEST_FROM_JUDGE = 212
local QUEST_1 = 213

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/empress_anassa/qey_adv01_oakmyst/empressanassa000.mp3", "", "", 122104258, 2418821305, Spawn)
	
	if HasCompletedQuest(Spawn, QUEST_FROM_NEOLA) and HasCompletedQuest(Spawn, QUEST_FROM_JUDGE) and not HasQuest(Spawn, QUEST_1) and not HasCompletedQuest(Spawn, QUEST_1) then
		AddConversationOption(conversation, "Your judge has sent me.", "dlg_5_1")
	elseif HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 2 then
		AddConversationOption(conversation, "I've killed Rotweed.", "KilledRotweed")
	end
	
	AddConversationOption(conversation, "I seek nothing. Farewell.")
	StartConversation(conversation, NPC, Spawn, "Greetings and welcome to our hollowed grove. What is it you seek?")
end

function dlg_5_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/empress_anassa/qey_adv01_oakmyst/empressanassa001.mp3", "", "", 2413694223, 3249886885, Spawn)
	AddConversationOption(conversation, "I will challenge this evil. ", "OfferQuest1")
	AddConversationOption(conversation, "I cannot help you now. Farewell.")
	StartConversation(conversation, NPC, Spawn, "You're the one Eunomia speaks of so highly. You served us well, but the corruption spoiling this forest still looms. We must destroy it!")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function WhatIsRotweed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/empress_anassa/qey_adv01_oakmyst/empressanassa003.mp3", "", "", 1907995091, 655055942, Spawn)
	AddConversationOption(conversation, "I will battle this Rotweed and return victorious. ", "dlg_5_4")
	StartConversation(conversation, NPC, Spawn, "In this age, all woodlands fight a silent battle. The forces of nature have become twisted and tormented. Rotweed is one of these corrupted creations that taints the woodlands of Norrath.")
end

function KilledRotweed(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Blllah x2")
	StartConversation(conversation, NPC, Spawn, "Blah blah blah, if you see this I've forgotten to come back and put in wht she actually says.  Let Scatman know")
end