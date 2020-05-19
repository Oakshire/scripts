--[[
	Script Name	: SpawnScripts/Baubbleshire/SageXoort.lua
	Script Purpose	: Sage Xoort 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
local EMBERS_FOR_XOOT = 333 -- was 57

function spawn(NPC)
	ProvidesQuest(NPC, EMBERS_FOR_XOOT)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
	
	if not HasCompletedQuest(Spawn, EMBERS_FOR_XOOT) then
		Begin(NPC, Spawn, conversation)
	else
		DoneQuests(NPC, Spawn)
	end
end

function Begin(NPC, Spawn, conversation)
	if not HasQuest(Spawn, EMBERS_FOR_XOOT) and not HasCompletedQuest(Spawn, EMBERS_FOR_XOOT) and GetLevel(Spawn) >= 5 then
		AddConversationOption(conversation, "I was just looking at what you were writing there.", "LookingAtWriting")
	elseif HasQuest(Spawn, EMBERS_FOR_XOOT) and GetQuestStep(Spawn, EMBERS_FOR_XOOT) == 2 then
		AddConversationOption(conversation, "I'm actually the one that's of service here!", "ImOfService")
	end
	
	AddConversationOption(conversation, "I'm just looking around, thanks. ")
	StartConversation(conversation, NPC, Spawn, "Hello there!  How can I be of service?")
end

function LookingAtWriting(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What's wrong with fire as a power source?", "WhatsWrongWithFire")
	AddConversationOption(conversation, "I don't know. Good luck with that.")
	StartConversation(conversation, NPC, Spawn, "Nothing much, just a schematic I'm working on. I can't find a power source for it ... Oh, Solusek's flame! How in the name of Brell can I make this thing work?")
end

function WhatsWrongWithFire(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'll get some.", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Fire's no good. It doesn't get hot enough or burn long enough. WAIT! HAH! Oh, you're right! I need a special type of coal. You thought of it, so you can fetch it. I need still-burning embers from the forgotten guardians in the Forest Ruins.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, EMBERS_FOR_XOOT)
end

function ImOfService(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Here you are. ", "HereYouAre")
	StartConversation(conversation, NPC, Spawn, "So, you return with the coals ... I hope you didn't get burned! Let me take a look...")
end

function HereYouAre(NPC, Spawn)
	SetStepComplete(Spawn, EMBERS_FOR_XOOT, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thanks, it's appreciated.")
	StartConversation(conversation, NPC, Spawn, "Oh yes! These shall work nicely!  Tell you what -- take this money for your work. I planned on buying a spell for creating a power source but because of your smart thinking and hard work, I need no spell!")
end

function DoneQuests(NPC, Spawn)
	choice = math.random(1, 2)
	if choice == 1 then
		PlayFlavor(NPC, "", "Oh to Drunder with this! How will I ever be able to get this thing working?", "frustrated", 1689589577, 4560189, Spawn)
	else
		Say(NPC, "Oops! Sorry friend! I thought you were someone else. Good day now!")
	end
end