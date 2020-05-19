--[[
	Script Name	: SpawnScripts/Starcrest/Vondorinsarnoo.lua
	Script Purpose	: Vondorinsarnoo 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
local SOBERING_REMEDY = 246

function spawn(NPC)
	ProvidesQuest(NPC, SOBERING_REMEDY)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1008.mp3", "", "", 0, 0, Spawn)
	
	if CanReceiveQuest(Spawn, SOBERING_REMEDY) then
		AddConversationOption(conversation, "What's wrong with him? ", "dlg_59_1")
		AddConversationOption(conversation, "Guess some people handle their liquor better than others.  Good day!")
		StartConversation(conversation, NPC, Spawn, "We are coping with the recent events...  some in better ways than others.  Take that poor drunk, Hubert, across the way for instance...")
	elseif HasQuest(Spawn, SOBERING_REMEDY) and GetQuestStep(Spawn, SOBERING_REMEDY) == 4 then
		SetStepComplete(Spawn, SOBERING_REMEDY, 4)
		Say(NPC, "Sorry we don't have the turn in test")
	end
end

function dlg_59_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll help you, seems to be a worthy cause.", "OfferQuestSoberingRemedy")
	AddConversationOption(conversation, "Best of luck to you.  I'll be off to pursue other interests.")
	StartConversation(conversation, NPC, Spawn, "His faith is shaken, and he's suffered insurmountable hardships and loss.  I could help this poor soul, but first, I must remove him from his drunken stupor.")
end

function OfferQuestSoberingRemedy(NPC, Spawn)
	OfferQuest(NPC, Spawn, SOBERING_REMEDY)
end

function dlg_59_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll be back soon.")
	StartConversation(conversation, NPC, Spawn, "He'll speak more clearly with that rotgut out of his stomach.")
end