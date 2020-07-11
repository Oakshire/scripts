--[[
	Script Name	: SpawnScripts/EnchantedLands/DeputyHopple.lua
	Script Purpose	: Deputy Hopple 
	Script Author	: Cynnar
	Script Date	: 2015.02.24
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm interested in entering one of your fundraising contests.", "dlg_0_1")
		AddConversationOption(conversation, "It's always a good day to kill a goblin.")
	StartConversation(conversation, NPC, Spawn, "It's a beautiful day to kill a goblin!")
	if convo==1 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm interested in entering one of your fundraising contests.", "dlg_1_1")
		AddConversationOption(conversation, "It's always a good day to kill a goblin.")
		StartConversation(conversation, NPC, Spawn, "It's a beautiful day to kill a goblin!")
	end

	if convo==2 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm interested in entering one of your fundraising contests.", "dlg_2_1")
		AddConversationOption(conversation, "It's always a good day to kill a goblin.")
		StartConversation(conversation, NPC, Spawn, "It's a beautiful day to kill a goblin!")
	end

	if convo==3 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm interested in entering one of your fundraising contests.", "dlg_3_1")
		AddConversationOption(conversation, "It's always a good day to kill a goblin.")
		StartConversation(conversation, NPC, Spawn, "It's a beautiful day to kill a goblin!")
	end

	if convo==4 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm interested in entering one of your fundraising contests.", "dlg_4_1")
		AddConversationOption(conversation, "It's always a good day to kill a goblin.")
		StartConversation(conversation, NPC, Spawn, "It's a beautiful day to kill a goblin!")
	end

	if convo==6 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1024.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "It's always a good day to kill a goblin.", "dlg_6_1")
		StartConversation(conversation, NPC, Spawn, "It's a beautiful day to kill a goblin!")
	end

	if convo==9 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Er, I suppose so.  Deputy Nettlebrine sent me to talk to you about museum fundraisers.", "dlg_9_1")
		AddConversationOption(conversation, "It's always a good day to kill a goblin.")
		StartConversation(conversation, NPC, Spawn, "It's a beautiful day to kill a goblin!")
	end

	if convo==10 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Er, I suppose so.  Deputy Nettlebrine sent me to talk to you about museum fundraisers.", "dlg_10_1")
		AddConversationOption(conversation, "It's always a good day to kill a goblin.")
		StartConversation(conversation, NPC, Spawn, "It's a beautiful day to kill a goblin!")
	end

	if convo==13 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_3_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm interested in entering one of your fundraising contests.", "dlg_13_1")
		AddConversationOption(conversation, "It's always a good day to kill a goblin.")
		StartConversation(conversation, NPC, Spawn, "It's a beautiful day to kill a goblin!")
	end

	if convo==14 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You've never seen this quality before!", "dlg_14_1")
		AddConversationOption(conversation, "I'm still working at it.")
		StartConversation(conversation, NPC, Spawn, "How's your contest entry coming along?")
	end

	if convo==15 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm still working at it.", "dlg_15_1")
		StartConversation(conversation, NPC, Spawn, "How's your contest entry coming along?")
	end

	if convo==16 then
		PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm interested in entering one of your fundraising contests.", "dlg_16_1")
		AddConversationOption(conversation, "It's always a good day to kill a goblin.")
		StartConversation(conversation, NPC, Spawn, "It's a beautiful day to kill a goblin!")
	end

end

function dlg_0_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Fundraiser One: Apples Away", "dlg_0_2")
		AddConversationOption(conversation, "Fundraiser Three: Table for Two")
		AddConversationOption(conversation, "Fundraiser Four: Feyiron Dagger of Doom")
		AddConversationOption(conversation, "On second thought, never mind.")
	StartConversation(conversation, NPC, Spawn, "If you're handy with your hands, you're more than welcome to participate in our fundraisers.  I suppose you could pay someone else to make these things for you, though I sure wouldn't want to! Every item submitted will be sold with the profits going toward our museum building fund. There's a prize for first place in each category!")
end

function dlg_1_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Fundraiser One: Apples Away", "dlg_1_2")
		AddConversationOption(conversation, "Fundraiser Three: Table for Two")
		AddConversationOption(conversation, "Fundraiser Four: Feyiron Dagger of Doom")
		AddConversationOption(conversation, "On second thought, never mind.")
	StartConversation(conversation, NPC, Spawn, "If you're handy with your hands, you're more than welcome to participate in our fundraisers.  I suppose you could pay someone else to make these things for you, though I sure wouldn't want to! Every item submitted will be sold with the profits going toward our museum building fund. There's a prize for first place in each category!")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Fundraiser One: Apples Away", "dlg_3_2")
		AddConversationOption(conversation, "Fundraiser Three: Table for Two")
		AddConversationOption(conversation, "Fundraiser Four: Feyiron Dagger of Doom")
		AddConversationOption(conversation, "On second thought, never mind.")
	StartConversation(conversation, NPC, Spawn, "If you're handy with your hands, you're more than welcome to participate in our fundraisers.  I suppose you could pay someone else to make these things for you, though I sure wouldn't want to! Every item submitted will be sold with the profits going toward our museum building fund. There's a prize for first place in each category!")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_2_1006.mp3", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'm interested in entering one of your fundraising contests.", "dlg_3_3")
		AddConversationOption(conversation, "It's always a good day to kill a goblin.")
	StartConversation(conversation, NPC, Spawn, "It's a beautiful day to kill a goblin!")
end

function dlg_3_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Fundraiser One: Apples Away", "dlg_3_4")
		AddConversationOption(conversation, "Fundraiser Three: Table for Two")
		AddConversationOption(conversation, "Fundraiser Four: Feyiron Dagger of Doom")
		AddConversationOption(conversation, "On second thought, never mind.")
	StartConversation(conversation, NPC, Spawn, "If you're handy with your hands, you're more than welcome to participate in our fundraisers.  I suppose you could pay someone else to make these things for you, though I sure wouldn't want to! Every item submitted will be sold with the profits going toward our museum building fund. There's a prize for first place in each category!")
end

function dlg_4_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Fundraiser One: Apples Away", "dlg_4_2")
		AddConversationOption(conversation, "Fundraiser Three: Table for Two")
		AddConversationOption(conversation, "Fundraiser Four: Feyiron Dagger of Doom")
		AddConversationOption(conversation, "On second thought, never mind.")
	StartConversation(conversation, NPC, Spawn, "If you're handy with your hands, you're more than welcome to participate in our fundraisers.  I suppose you could pay someone else to make these things for you, though I sure wouldn't want to! Every item submitted will be sold with the profits going toward our museum building fund. There's a prize for first place in each category!")
end

function dlg_9_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "That sounds great!", "dlg_9_2")
	StartConversation(conversation, NPC, Spawn, "Really! That's splendid! I hate killing goblins anyway.  I'll do anything to get reassigned away from this wretched outpost.  I've come up with a handful of fundraising contests.  Instead of feats of strength, I thought we might go the traditional route of getting some items donated and then selling them off for a profit.  I've even arranged for some really nice prizes.")
end

function dlg_10_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "That sounds great!", "dlg_10_2")
	StartConversation(conversation, NPC, Spawn, "Really! That's splendid! I hate killing goblins anyway.  I'll do anything to get reassigned away from this wretched outpost.  I've come up with a handful of fundraising contests.  Instead of feats of strength, I thought we might go the traditional route of getting some items donated and then selling them off for a profit.  I've even arranged for some really nice prizes.")
end

function dlg_10_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Fundraiser One: Apples Away", "dlg_10_3")
		AddConversationOption(conversation, "Fundraiser Two: Sewing a Sampler")
		AddConversationOption(conversation, "Fundraiser Three: Table for Two")
		AddConversationOption(conversation, "Fundraiser Four: Feyiron Dagger of Doom")
		AddConversationOption(conversation, "I'm not so good with these sorts of things.")
	StartConversation(conversation, NPC, Spawn, "If you're handy with your hands, you're more than welcome to participate in our fundraisers.  I suppose you could pay someone else to make these things for you, though I sure wouldn't want to! Every item submitted will be sold with the profits going toward our museum building fund. There's a prize for first place in each category!")
end

function dlg_10_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "I'll get right to work.")
	StartConversation(conversation, NPC, Spawn, "Really? You want to do this?  I find sewing so tedious.  I suppose we all have our niches in life, though.  Do your best work on a tailored broadcloth cap; fancy it up however you like.  The first prize in this category is a pattern for your very own matching shawl.")
end

function dlg_13_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Fundraiser One: Apples Away", "dlg_13_2")
		AddConversationOption(conversation, "Fundraiser Three: Table for Two")
		AddConversationOption(conversation, "Fundraiser Four: Feyiron Dagger of Doom")
		AddConversationOption(conversation, "On second thought, never mind.")
	StartConversation(conversation, NPC, Spawn, "If you're handy with your hands, you're more than welcome to participate in our fundraisers.  I suppose you could pay someone else to make these things for you, though I sure wouldn't want to! Every item submitted will be sold with the profits going toward our museum building fund. There's a prize for first place in each category!")
end

function dlg_13_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Wild apple muffins! Coming right up!", "dlg_13_3")
	StartConversation(conversation, NPC, Spawn, "I'm so glad you picked this one! I'm the only judge and I love apples!  You have to make three wild apple muffins: one for display and two for the tasting.  The first prize for this one is my own secret family recipe for apple pie!")
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "You won't raise too many funds this way.", "dlg_14_2")
	StartConversation(conversation, NPC, Spawn, "Great! And good news for you -- you're the only person who entered! You automatically win!")
end

function dlg_16_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "", "", "", 0, 0, Spawn)
		AddConversationOption(conversation, "Fundraiser One: Apples Away", "dlg_16_2")
		AddConversationOption(conversation, "Fundraiser Three: Table for Two")
		AddConversationOption(conversation, "Fundraiser Four: Feyiron Dagger of Doom")
		AddConversationOption(conversation, "On second thought, never mind.")
	StartConversation(conversation, NPC, Spawn, "If you're handy with your hands, you're more than welcome to participate in our fundraisers.  I suppose you could pay someone else to make these things for you, though I sure wouldn't want to! Every item submitted will be sold with the profits going toward our museum building fund. There's a prize for first place in each category!")
end

