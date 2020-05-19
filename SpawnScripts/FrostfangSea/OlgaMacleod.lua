--[[
	Script Name	: SpawnScripts/FrostfangSea/OlgaMacleod.lua
	Script Purpose	: Olga Macleod 
	Script Author	: theFoof
	Script Date	: 2013.09.01
	Script Notes	: 
--]]

local FrozenChowder = 88

function spawn(NPC)
	ProvidesQuest(NPC, FrozenChowder)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not HasCompletedQuest(Spawn, FrozenChowder) and not HasQuest(Spawn, FrozenChowder) then
		PlayFlavor(NPC, "olga_macleod/halas/new_halas/olga_macleod/olga_macleod_001.mp3", "", "", 183975505, 4113739209, Spawn)
		AddConversationOption(conversation, "I'm " .. GetName(Spawn) .. ", pleased to meet you.", "Quest1Chat_1")
		StartConversation(conversation, NPC, Spawn, "I'm Olga MacLeod, and you are?")
	elseif GetQuestStep(Spawn, FrozenChowder) == 1 or GetQuestStep(Spawn, FrozenChowder) == 2 then
		AddConversationOption(conversation, "Where can I find the halasian reeds and the frozen pincers?", "Quest1Chat_4")
		StartConversation(conversation, NPC, Spawn, "Did you collect the ingredients I asked for?")
	elseif GetQuestStep(Spawn, FrozenChowder) == 3 then
		AddConversationOption(conversation, "I did indeed.", "Quest1Chat_5")
		StartConversation(conversation, NPC, Spawn, "Did you collect the ingredients I asked for?")
	else
		PlayFlavor(NPC, "", "Thanks for helping me with the chowder!", "hello", 0, 0, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "olga_macleod/halas/new_halas/olga_macleod/olga_macleod_003.mp3", "", "", 2540192341, 2605234909, Spawn)
	AddConversationOption(conversation, "Can I get you something.", "Quest1Chat_2")
	StartConversation(conversation, NPC, Spawn, "Aye there. I'm on break from working at The Stone Hammer. It's a pity there isn't anything to eat.")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "olga_macleod/halas/new_halas/olga_macleod/olga_macleod_004.mp3", "", "", 902632382, 378214084, Spawn)
	AddConversationOption(conversation, "Really?", "Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "No, the only thing that hits the spot on a day like this is my recipe for frozen pincer chowder. It's very delicious, I'm going to make it for the New Halas City Festival.")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "olga_macleod/halas/new_halas/olga_macleod/olga_macleod_005.mp3", "", "", 2856769449, 2240854922, Spawn)
	AddConversationOption(conversation, "I could gather them for you.", "OfferFrozenChowder")
	AddConversationOption(conversation, "What a pity.")
	StartConversation(conversation, NPC, Spawn, "Yes. I'd make it now, but I don't have time to go and gather the ingredients myself.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Thanks again, sometimes I forget these things!")
	StartConversation(conversation, NPC, Spawn, "The halasian reeds and the frozen pincers are down near the water's edge at the Erollis Dock, east of New Halas.")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Here you go.", "Quest1Chat_6")
	StartConversation(conversation, NPC, Spawn, "Great, hand them over and I'll get to cooking!")
end

function Quest1Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "It smells delicious", "Quest1Chat_7")
	StartConversation(conversation, NPC, Spawn, "Thank Marr this cooks up fast. I'll be able to have a bowl before I must get back to work.")
end

function Quest1Chat_7(NPC, Spawn)
	SetStepComplete(Spawn, FrozenChowder, 3)
	AddSpawnAccess(GetSpawn(NPC, 4701842), Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, NPC, Spawn, "Thanks Olga!")
	StartConversation(conversation, NPC, Spawn, "There! Go ahead, ladle yourself some chowder.")
end

function OfferFrozenChowder(NPC, Spawn)
	OfferQuest(NPC, Spawn, FrozenChowder)
end