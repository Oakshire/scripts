--[[
	Script Name	: SpawnScripts/PeatBog/FeriusMentus.lua 
	Script Purpose	: Ferius Mentus
	Script Author	: Scatman
	Script Date	: 2009.05.10
	Script Notes	: Updated 1/8/2020 by Shatou
--]]

local QUEST_1 = 513

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		Say(NPC, "If I can perfect this, it may be amazingly useful.", Spawn)
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		YesYoureHere(NPC, Spawn, conversation)
	end
end

-------------------------------------------------------------------------------------------------------------------------
--								QUEST 1
-------------------------------------------------------------------------------------------------------------------------

function YesYoureHere(NPC, Spawn, conversation)
	AddConversationOption(conversation, "Why are you so grump?", "SoGrumpy")
	AddConversationOption(conversation, "Fine, I'll leave.")
	StartConversation(conversation, NPC, Spawn, "Yes, yes, you're here, I'm here, why don't we talk eh? No thanks.")
end

function SoGrumpy(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Why do you need frogs?", "WhyNeedFrogs")
	StartConversation(conversation, NPC, Spawn, "My research is coming to a stand still! I paid some young lad to go fetch me frogs and just took my money and left! Can you believe that? Now I have no frogs.")
end

function WhyNeedFrogs(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Well I could help you collect some frogs.", "ICanCollectFrogs")
	StartConversation(conversation, NPC, Spawn, "I already told you! I need them for research! The frogs here secrete a fluid that tastes HORRIBLE. It helps them avoid being eaten. With the influx if 'rehabilitated' ogres coming in, I'm trying to come up with an easy way to remind them not to eat the gnomes or halflings.")
end

function ICanCollectFrogs(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I can do this.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "You think so? I need some of the glands inside them. I don't expect you to be able to recognize it, so just bring me the whole body. Then of them, in fact.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_1) == 2 then
		AddConversationOption(conversation, "Yes I did.", "GotFrogs")
	else
		AddConversationOption(conversation, "No, not yet.")
	end
	StartConversation(conversation, NPC, Spawn, "Did you get the frogs?")
end

function GotFrogs(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 2)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "You're welcome.")
	StartConversation(conversation, NPC, Spawn, "Ah, perfect! Thanks! So much nicer than the one that ran off earlier. Thank you.")
end