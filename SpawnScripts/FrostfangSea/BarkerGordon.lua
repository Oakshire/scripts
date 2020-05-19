--[[
	Script Name	: SpawnScripts/FrostfangSea/BarkerGordon.lua
	Script Purpose	: Barker Gordon 
	Script Author	: theFoof
	Script Date	: 2013.09.02
	Script Notes	:
--]]

local HamBeans = 89

function spawn(NPC)
	ProvidesQuest(NPC, HamBeans)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if not HasCompletedQuest(Spawn, HamBeans) and not HasQuest(Spawn, HamBeans) then
		PlayFlavor(NPC, "barker_gordon/halas/new_halas/barker_gordon/barker_gordon_001.mp3", "", "", 1186893886, 14843439, Spawn)
		AddConversationOption(conversation, "Hello Barker, I'm " .. GetName(Spawn) .. ".", "Quest1Chat_1")
		StartConversation(conversation, NPC, Spawn, "Good day to you, stranger! I am Barker Gordon, a native of New Halas.")
	elseif GetQuestStep(Spawn, HamBeans) == 1 or GetQuestStep(Spawn, HamBeans) == 2 then
		AddConversationOption(conversation, "No, not yet. Where can I find the ingredients again?", "Quest1Chat_6")
		StartConversation(conversation, NPC, Spawn, "Have you done the feed and killed Bentor and picked up my order of beans?")
	elseif GetQuestStep(Spawn, HamBeans) == 3 then
		AddConversationOption(conversation, "I have. Here is the ham and beans.", "Quest1Chat_7")
		StartConversation(conversation, NPC, Spawn, "Have you done the feed and killed Bentor and picked up my order of beans?")
	elseif GetQuestStep(Spawn, HamBeans) == 4 then
		PlayFlavor(NPC, "", "Now try a piece of my ham and beans, it's very good!", "beckon", 0, 0, Spawn)
	else
		PlayFlavor(NPC, "", "Thanks again for your help!", "thanks", 0, 0, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "barker_gordon/halas/new_halas/barker_gordon/barker_gordon_003.mp3", "", "", 1426385889, 3817885268, Spawn)
	AddConversationOption(conversation, "What kind of work?", "Quest1Chat_2")
	StartConversation(conversation, NPC, Spawn, "Could I interest you in some work?")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "barker_gordon/halas/new_halas/barker_gordon/barker_gordon_004.mp3", "", "", 3604382854, 1944496280, Spawn)
	AddConversationOption(conversation, "So what's the problem?", "Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "I've been asked to make my recipe for ham and halasian beans for the New Halas City Festival. We want to impress all of our visitors!")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "barker_gordon/halas/new_halas/barker_gordon/barker_gordon_005.mp3", "", "", 2169381971, 1634343888, Spawn)
	AddConversationOption(conversation, "So you want me to slaughter your pet pig?", "Quest1Chat_4")
	StartConversation(conversation, NPC, Spawn, "I've been raising a pig just for this occasion. I would normally slaughter him myself, but this time I've become too attached to him. I fear that I would not have the strength to see a clean cut through.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "barker_gordon/halas/new_halas/barker_gordon/barker_gordon_006.mp3", "", "", 1408333344, 155634991, Spawn)
	AddConversationOption(conversation, "Well, if it will help New Halas impress the rest of Norrath, I'll do it.", "Quest1Chat_5")
	AddConversationOption(conversation, "I'm not slaughtering your pig for you.")
	StartConversation(conversation, NPC, Spawn, "I knew ye would understand!  I should have listened to others and not named him.")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "barker_gordon/halas/new_halas/barker_gordon/barker_gordon_007.mp3", "", "", 4093429519, 442079211, Spawn)
	AddConversationOption(conversation, "You're right.  You shouldn't have named him.", "OfferHamBeans")
	StartConversation(conversation, NPC, Spawn, "I promise that it will be worth it! My pig's name is Bentor the Mighty. Bentor is in the pen next to the mender's workshop, The Stone Hammer, up in New Halas proper.")
end

function Quest1Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Thanks Barker. I'll return with the ingredients.")
	StartConversation(conversation, NPC, Spawn, "The halasian beans at the shaman hut called Pilgrims' Hearth in southwest New Halas. Bentor the Mighty is in the pen next to the mender's workshop, The Stone Hammer, in New Halas.")
end

function Quest1Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Are you going to be okay?", "Quest1Chat_8")
	StartConversation(conversation, NPC, Spawn, "Oh, my Bentor! What a good pig you were!")
end

function Quest1Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Well, okay then.", "Quest1Chat_9")
	StartConversation(conversation, NPC, Spawn, "I'll be fine. This is the way of things, I know better than to get attached to them. It's just me old age.")
end

function Quest1Chat_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I must admit it smells good.", "Quest1Chat_10")
	StartConversation(conversation, NPC, Spawn, "Here, I'll get right to work prepping the beans and cooking the ham. Just sit right there, it'll be done soon enough.")
end

function Quest1Chat_10(NPC, Spawn)
	AddSpawnAccess(GetSpawn(NPC, 4701844), Spawn)
	SetStepComplete(Spawn, HamBeans, 3)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Okay, I'll grab myself of a slice of ham with some beans.")
	StartConversation(conversation, NPC, Spawn, "Done! Barker's ham and beans! Go ahead, try a slice. I've salted the rest of the meat so that I can use it for the City Festival.")
end

function OfferHamBeans(NPC, Spawn)
	OfferQuest(NPC, Spawn, HamBeans)
end