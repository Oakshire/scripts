--[[
	Script Name	: SpawnScripts/Antonica/BlartonBlumble.lua
	Script Purpose	: Blarton Blumble 
	Script Author	: geordie0511
	Script Date	: 2019.01.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local Lucky = 457
local Care = 467

function spawn(NPC)
ProvidesQuest(NPC, Lucky)
end

function respawn(NPC)
	spawn(NPC)
end




function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1, 3)
	if choice == 1 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1040.mp3", "", "", 0, 0, Spawn)
	elseif choice == 2 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1040.mp3", "", "", 0, 0, Spawn) 
	elseif choice == 3 then
	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1040.mp3", "", "", 0, 0, Spawn)
	end
	if not HasQuest(Spawn, Lucky) and not HasCompletedQuest(Spawn, Lucky) then
	  Option1(NPC, Spawn)
	elseif GetQuestStep(Spawn, Lucky) == 1 then
	  Quest_Progress(NPC, Spawn)
	elseif GetQuestStep(Spawn, Lucky) == 2 then
	   Quest1_Complete(NPC, Spawn)
	end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What happened to your leg?", "dlg_9_1")
	AddConversationOption(conversation, "I'm afraid I don't have time to chat.")
	StartConversation(conversation, NPC, Spawn, "Why, hello there! Pleased to meet you, friend. I do hope you're having a better day than I am. With my leg being as it is, I'm not sure how much longer I can take being stuck here.")
end



function Quest_Progress(NPC, Spawn)
		PlayFlavor(NPC, "", "Hello again! Please hurry back when you're done.", "", 1689589577, 4560189, Spawn)
end

function Quest1_Complete(NPC, Spawn)
    SetStepComplete(Spawn, Lucky, 2)
    FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Always glad to help.")
	StartConversation(conversation, NPC, Spawn, "Oh, you've found it! Thank you so much! I didn't think I'd ever get it back. I don't know how I can repay you. I'm in your debt, friend.")
end




function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		AddConversationOption(conversation, "Really?", "dlg_9_2")
		AddConversationOption(conversation, "I'm sorry, but I have pressing business elsewhere.")
	StartConversation(conversation, NPC, Spawn, "Ah, I can't believe I was such a darn fool. How'd I manage to hurt my leg and lose my best fishin' lure all in one day? There I was up on the coast, north of here, having a nice walk before settling down for a long day of fishin' when I slipped and hurt my poor leg.")
end

function dlg_9_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		AddConversationOption(conversation, "Sure, I'd be happy to help.", "offer")
		AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "It hurt somethin' fierce and I only barely managed to drag myself back here. The next morning I found I could stand on it okay, but not for too long. I thought I'd try to do some fishin' here at this nice pond since I'm stuck until I can heal enough to get back to my favorite fishin' holes. Just as I was getting set up, I realized I'd lost my favorite lure! I must have dropped it somewhere up on the beach north of here near where I fell. With my leg like this, I can't go and look for it myself. I don't suppose you might be able to help find it for me?")
end

function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, Lucky)
end

