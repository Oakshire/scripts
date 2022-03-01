--[[
	Script Name	: SpawnScripts/FrostfangSea/RibbitHopson.lua
	Script Purpose	: Ribbit Hopson 
	Script Author	: theFoof
	Script Date	: 2013.08.27
	Script Notes	:
--]]

local SpiderPuffs = 87

function spawn(NPC)
	ProvidesQuest(NPC, SpiderPuffs)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	PlayFlavor(NPC, "", "Come on in, the door's open!", "beckon", 1689589577, 4560189, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not HasCompletedQuest(Spawn, SpiderPuffs) and not HasQuest(Spawn, SpiderPuffs) then
		PlayFlavor(NPC, "ribbit_hopson/halas/new_halas/ribbit_hopson/ribbit_hopson_001.mp3", "", "", 2788145631, 3173619593, Spawn)
		AddConversationOption(conversation, "Hello, Ribbit. I am " .. GetName(Spawn) .. ".", "Quest1Chat_1")
		StartConversation(conversation, NPC, Spawn, "Hello! I haven't seen you around before. I am Ribbit Hopson, an immigrant from Qeynos.")
	elseif GetQuestStep(Spawn, SpiderPuffs) == 1 or GetQuestStep(Spawn, SpiderPuffs) == 2 then
		AddConversationOption(conversation, "Where can I find the dame's rocket and wooly silkspinners?", "Quest1Chat_5")
		StartConversation(conversation, NPC, Spawn, "Have you collected the ingredients I asked for?")
	elseif GetQuestStep(Spawn, SpiderPuffs) == 3 then
		AddConversationOption(conversation, "I have the dame's rockets and the woolly silkspinner meat.", "Quest1Chat_6")
		StartConversation(conversation, NPC, Spawn, "Have you collected the ingredients I asked for?")
	elseif GetQuestStep(Spawn, SpiderPuffs) == 4 then
		PlayFlavor(NPC, "", "Go ahead, try one!", "beckon", 0, 0, Spawn)
	elseif HasCompletedQuest(Spawn, SpiderPuffs) then
		PlayFlavor(NPC, "", "Thanks for your help. The spider puffs are pretty good, huh?", "thanks", 0, 0, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "ribbit_hopson/halas/new_halas/ribbit_hopson/ribbit_hopson_003.mp3", "", "", 3519293872, 2814938385, Spawn)
	AddConversationOption(conversation, "Is there anything with which I can help you?", "Quest1Chat_2")
	StartConversation(conversation, NPC, Spawn, "It is nice to meet you. I am busy preparing for the New Halas City Festival! Many people will come from all over Norrath to New Halas during the festival, so it is important that we put our best flipper forward.")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "ribbit_hopson/halas/new_halas/ribbit_hopson/ribbit_hopson_004.mp3", "", "", 776305400, 980133477, Spawn)
	AddConversationOption(conversation, "So?", "Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "I am going to make my family's secret recipe for spider puffs for the festival, but I do not know how it will taste with the spiders native to New Halas. I've been growing the dame's rocket seedlings that I brought with me to New Halas, and they are just now ripening.")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "ribbit_hopson/halas/new_halas/ribbit_hopson/ribbit_hopson_005.mp3", "", "", 1928136735, 1280650233, Spawn)
	AddConversationOption(conversation, "I could do that!", "Quest1Chat_4")
	StartConversation(conversation, NPC, Spawn, "Well, I'm no fighter and usually I'd pay someone to collect spider meat for me.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "ribbit_hopson/halas/new_halas/ribbit_hopson/ribbit_hopson_006.mp3", "", "", 2761139077, 596680396, Spawn)
	AddConversationOption(conversation, "That would be fine.", "OfferSpiderPuffs")
	AddConversationOption(conversation, "I'm not mucking about some cave for some disgusting puffs. No thank you.")
	StartConversation(conversation, NPC, Spawn, "I warn you, I do not have much money left over. As it turns out, pilgrimages are much more expensive than you would suppose! But I could give you some of the baked spider puffs, they are most delicious.")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you, Ribbit. I shall return with the ingredients.")
	StartConversation(conversation, NPC, Spawn, "The dame's rocket is right outside my door and the woolly silkspinners are in the cave leading to the Erollis Dock.")
end

function Quest1Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I can rest a bit.", "Quest1Chat_7")
	StartConversation(conversation, NPC, Spawn, "Splendid! If you will rest for a moment, I can have the spider puff batter whipped up and baked in no time!")
end

function Quest1Chat_7(NPC, Spawn)
	AddSpawnAccess(GetSpawn(NPC, 4701841), Spawn)
	SetStepComplete(Spawn, SpiderPuffs, 3)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Thank you, Ribbit!")
	StartConversation(conversation, "There, finished! Please take some puffs for yourself.")
end

function OfferSpiderPuffs(NPC, Spawn)
	OfferQuest(NPC, Spawn, SpiderPuffs)
end