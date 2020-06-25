--[[
	Script Name	: SpawnScripts/FrostfangSea/BlibbaNugrud.lua
	Script Purpose	: Blibba Nugrud 
	Script Author	: theFoof
	Script Date	: 2013.08.19
	Script Notes	:
--]]

local TrustIssues = 85

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	if HasQuest(Spawn, TrustIssues) and not QuestStepIsComplete(Spawn, TrustIssues, 1) then
		PlayFlavor(NPC, "blibba_nugrud/halas/new_halas_guard_house/blibba_nugrud001.mp3", "", "", 1692822878, 2906055751, Spawn)
		AddConversationOption(conversation, "I have a few questions.", "Quest1Chat_1")
		AddConversationOption(conversation, "Can you tell me what you're doing here?", "Quest1Chat_7")
		StartConversation(conversation, NPC, Spawn, "Fribbit.  Hail back, and all that.  What can I do for you?")
	elseif HasQuest(Spawn, TrustIssues) then
		PlayFlavor(NPC, "", "I've already told you what you wanted to know.", "hello", 0, 0, Spawn)
	else
		PlayFlavor(NPC, "", "Fribbit!  Godd day to you.", "hello", 0, 0, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blibba_nugrud/halas/new_halas_guard_house/blibba_nugrud004.mp3", "", "", 2666827594, 1649429363, Spawn)
	AddConversationOption(conversation, "Why did you come to Erollis?", "Quest1Chat_2")
	AddConversationOption(conversation, "Why don't you leave?", "Quest1Chat_9")
	StartConversation(conversation, NPC, Spawn, "Of course.  Ask away.")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blibba_nugrud/halas/new_halas_guard_house/blibba_nugrud006.mp3", "", "", 4224849804, 392144788, Spawn)
	AddConversationOption(conversation, "When did this happen?", "Quest1Chat_3")
	AddConversationOption(conversation, "I already know this; just give me the short version.", "Quest1Chat_6")
	StartConversation(conversation, NPC, Spawn, "The frogloks of Guk, my predecessors, were blessed with valor and the capacity for higher reasoning by the god Mithaniel Marr.")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blibba_nugrud/halas/new_halas_guard_house/blibba_nugrud007.mp3", "", "", 1546450602, 2461406794, Spawn)
	AddConversationOption(conversation, "Can you explain that further?", "Quest1Chat_4")
	AddConversationOption(conversation, "What does that have to do with Erollis?", "Quest1Chat_4")
	AddConversationOption(conversation, "I already know this; just give me the short version.", "Quest1Chat_6")
	AddConversationOption(conversation, "Whatever, I don't have the time for this.")
	StartConversation(conversation, NPC, Spawn, "This occurred hundreds of years ago.  The blessing of Marr allowed us to defeat our ancestral enemies, the trolls, but more importantly it allowed us to overcome our own shortcomings.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blibba_nugrud/halas/new_halas_guard_house/blibba_nugrud008.mp3", "", "", 3444575982, 3490248523, Spawn)
	AddConversationOption(conversation, "Aren't frogloks unfit for the environment of Erollis?", "Quest1Chat_5")
	AddConversationOption(conversation, "I already know this; just give me the short version.", "Quest1Chat_6")
	AddConversationOption(conversation, "Whatever, I don't have the time for this.")
	StartConversation(conversation, NPC, Spawn, "We conquered our own fear and ignorance.  My enlightened ancestors left Guk and carved out a new home in the world of Norrath.  They crawled out of the gunk and muck and into the light, literally and figuratively.")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blibba_nugrud/halas/new_halas_guard_house/blibba_nugrud009.mp3", "", "", 2086235207, 3956751510, Spawn)
	AddConversationOption(conversation, "Can you sum this up?", "Quest1Chat_6")
	AddConversationOption(conversation, "Whatever, I don't have the time for this.")
	StartConversation(conversation, NPC, Spawn, "Well, I would prefer to live in a swamp, or something like it.  The frigid weather is hard on my skin.  But I wouldn't say we're unfit, necessarily.  We're just as humanoid as we are amphibian.")
end

function Quest1Chat_6(NPC, Spawn)
	SetStepComplete(Spawn, TrustIssues, 1)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "blibba_nugrud/halas/new_halas_guard_house/blibba_nugrud010.mp3", "", "", 1038495244, 3766399001, Spawn)
	AddConversationOption(conversation, "Appreciate you taking the time to chat.")
	AddConversationOption(conversation, "Take care, Blibba.")
	StartConversation(conversation, NPC, Spawn, "The short answer is: we frogloks owe all that we are to Mithaniel Marr.  When I heard that He had blessed this place, I felt obliged to come here to pay Him homage.")
end

function Quest1Chat_7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "It's nothing quote so serious.", "Quest1Chat_1")
	AddConversationOption(conversation, "Just answer the question!", "Quest1Chat_8")
	AddConversationOption(conversation, "Whatever, I don't have the time for this.")
	StartConversation(conversation, NPC, Spawn, "Doing here?  You mean what is my business here? Or are you insinuating that I do not belong?")
end

function Quest1Chat_8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Fine. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "How rude!  Good day.")
end

function Quest1Chat_9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "Of course.", "Quest1Chat_2")
	AddConversationOption(conversation, "Just answer the question!", "Quest1Chat_8")
	StartConversation(conversation, NPC, Spawn, "That's a very interesting way of putting it. I'll assume you meant no offense.")
end