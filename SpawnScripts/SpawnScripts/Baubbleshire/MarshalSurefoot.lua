--[[
	Script Name	: SpawnScripts/Baubbleshire/MarshalSurefoot.lua
	Script Purpose	: Marshal Surefoot 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
local FIGHT_THE_FORGOTTEN_GUARDIANS = 334 -- was 59

function spawn(NPC)
	ProvidesQuest(NPC, FIGHT_THE_FORGOTTEN_GUARDIANS)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
	Begin(NPC, Spawn, conversation)
end

function Begin(NPC, Spawn, conversation)
	if not HasQuest(Spawn, FIGHT_THE_FORGOTTEN_GUARDIANS) and not HasCompletedQuest(Spawn, FIGHT_THE_FORGOTTEN_GUARDIANS) and GetLevel(Spawn) >= 5 then
		AddConversationOption(conversation, "Do deputies get paid well?", "PaidWell")
	elseif HasQuest(Spawn, FIGHT_THE_FORGOTTEN_GUARDIANS) and GetQuestStep(Spawn, FIGHT_THE_FORGOTTEN_GUARDIANS) == 2 then
		AddConversationOption(conversation, "It was amazing! I defeated five forgotten guardians.", "KilledGuardians")
	end
	
	AddConversationOption(conversation, "Sorry to hear that. I must be going.")
	StartConversation(conversation, NPC, Spawn, "Stand stout! You'd make a fine deputy.")
end

function PaidWell(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I can face the titans of the forest.", "CanFaceTitans")
	AddConversationOption(conversation, "I'm not facing any titans today.")
	StartConversation(conversation, NPC, Spawn, "Aha! A mercenary! I can use your mettle for testing the strengths of the enemy. Can you overcome the titants of the forest? What do ya say, soldier?")
end

function CanFaceTitans(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I will face the titans.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Then stand firm and venture to the Forest Ruins. The foes act as Forgotten Guardians. They prey upon the people ... stand tall soldier! Crush a few and return with a tale of victory!")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, FIGHT_THE_FORGOTTEN_GUARDIANS)
end

function KilledGuardians(NPC, Spawn)
	SetStepComplete(Spawn, FIGHT_THE_FORGOTTEN_GUARDIANS, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Farewell Marshal Surefoot.")
	StartConversation(conversation, NPC, Spawn, "What bravery! You laughed in the face of death! You are a true protector of the forest realms. I shall seek you out when I recruit my force of Leatherfoot deputies. You are relieved for now.")
end