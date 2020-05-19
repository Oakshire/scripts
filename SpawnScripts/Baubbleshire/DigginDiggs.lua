--[[
	Script Name	: SpawnScripts/Baubbleshire/DigginDiggs.lua
	Script Purpose	: Diggin Diggs <Armor and Shields>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

-- Quest ID's
local BADGER_PELTS_FOR_DIGGS = 332 -- was 58

function spawn(NPC)
	ProvidesQuest(NPC, BADGER_PELTS_FOR_DIGGS)
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
	if not HasQuest(Spawn, BADGER_PELTS_FOR_DIGGS) and not HasCompletedQuest(Spawn, BADGER_PELTS_FOR_DIGGS) then
		AddConversationOption(conversation, "I don't need a sales pitch. Got any work?", "GotAnyWork")
	elseif HasQuest(Spawn, BADGER_PELTS_FOR_DIGGS) and GetQuestStep(Spawn, BADGER_PELTS_FOR_DIGGS) == 2 then
		AddConversationOption(conversation, "Here is your bundle of badget pelts.", "BundleOfPelts")
	end
	
	AddConversationOption(conversation, "Sorry. Just passing by.")
	StartConversation(conversation, NPC, Spawn, "You're looking a might shabby there.  You could use some fine armor from Diggs' inventory.  I carry only the finest quality and sell at outrageously low, low prices!  I live for the community.")
end

function GotAnyWork(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I'm interested.", "ImInterested")
	AddConversationOption(conversation, "I don't have time to hunt.")
	StartConversation(conversation, NPC, Spawn, "So, you're a worker with no task, eh?  If you're itchin' to fill your pockets with heavy coin, then I have a task for you.  Are you interested in hunting?")
end

function ImInterested(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I will return with the bundle of badger pelts. ", "OfferQuest1")
	StartConversation(conversation, NPC, Spawn, "Then prepare for a hunting trip in the Forest Ruins.  I'll pay you handsomely for a bundle of badger pelts.  I may even toss in a bit of Diggs' finest armor.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, BADGER_PELTS_FOR_DIGGS)
end

function BundleOfPelts(NPC, Spawn)
	SetStepComplete(Spawn, BADGER_PELTS_FOR_DIGGS, 2)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I guess this is better than nothing.")
	StartConversation(conversation, NPC, Spawn, "Fine work ... fine work! I must tell you, I just paid my merchant taxes. 'Fraid the coin ain't as heavy as I promised. Sorry, taxes you know? I speak the truth!")
end