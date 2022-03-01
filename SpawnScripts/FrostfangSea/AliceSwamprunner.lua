--[[
	Script Name	: SpawnScripts/FrostfangSea/AliceSwamprunner.lua
	Script Purpose	: Alice Swamprunner 
	Script Author	: theFoof
	Script Date	: 2013.09.02
	Script Notes	:
--]]

local KestrelPie = 90

function spawn(NPC)
	ProvidesQuest(NPC, KestrelPie)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if not HasCompletedQuest(Spawn, KestrelPie) and not HasQuest(Spawn, KestrelPie) then
		PlayFlavor(NPC, "alice_swamprunner/halas/new_halas/alice_swamprunner/alice_swamprunner_001.mp3", "", "", 3199488336, 2249135127, Spawn)
		AddConversationOption(conversation, "Nice to meet you Alice, I'm " .. GetName(Spawn) .. ".", "Quest1Chat_1")
		StartConversation(conversation, NPC, Spawn, "Hello stranger! Welcome to Ravens' Roost. You can call me Alice Swamprunner.")
	elseif GetQuestStep(Spawn, KestrelPie) == 1 or GetQuestStep(Spawn, KestrelPie) == 2 then
		AddConversationOption(conversation, "Where can I find the kestrels and the ice shrooms?", "Quest1Chat_4")
		StartConversation(conversation, NPC, Spawn, "Have you brought me the ingredients?")
	elseif GetQuestStep(Spawn, KestrelPie) == 3 then
		AddConversationOption(conversation, "I have the meat and shrooms that you requested.", "Quest1Chat_5")
		StartConversation(conversation, NPC, Spawn, "Have you brought me the ingredients?")
	elseif GetQuestStep(Spawn, KestrelPie) == 4 then
		PlayFlavor(NPC, "", "Well go on, try one!", "beckon", 0, 0, Spawn)
	else
		PlayFlavor(NPC, "", "Thanks for your help with the kestrel pot pie.", "thanks", 0, 0, Spawn)
	end
end

function Quest1Chat_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "alice_swamprunner/halas/new_halas/alice_swamprunner/alice_swamprunner_003.mp3", "", "", 1636835603, 1296919818, Spawn)
	AddConversationOption(conversation, "I can always find time to help if help is needed.", "Quest1Chat_2")
	StartConversation(conversation, NPC, Spawn, "A pleasure. Are you busy?")
end

function Quest1Chat_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "alice_swamprunner/halas/new_halas/alice_swamprunner/alice_swamprunner_004.mp3", "", "", 3609415990, 2721638648, Spawn)
	AddConversationOption(conversation, "Kestrels are no problem for me.", "Quest1Chat_3")
	StartConversation(conversation, NPC, Spawn, "I am making my kestrel pot pie for the New Halas City Festival. The problem is, I'm not a hunter and the downy kestrels are already giving the guards a hard time so I cannot imagine how I would fare with the birds.")
end

function Quest1Chat_3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "alice_swamprunner/halas/new_halas/alice_swamprunner/alice_swamprunner_005.mp3", "", "", 3894141515, 2250215460, Spawn)
	AddConversationOption(conversation, "Sure, I don't mind the exercise.", "OfferKestrelPie")
	AddConversationOption(conversation, "I'm not running all over New Halas to help you cook dinner.")
	StartConversation(conversation, NPC, Spawn, "Well, if you are going to collect kestrel meat, would you mind picking me up some ice shrooms? You can find the ice shrooms in the cave leading to the Erollis Dock, and the kestrels are at the south entrance to New Halas.")
end

function Quest1Chat_4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(converstion, "I shall return once I have collected the ingredients.")
	StartConversation(conversation, NPC, Spawn, "You can find the ice shrooms in the cave leading to the Erollis Dock, and the kestrels are at the south entrance to New Halas.")
end

function Quest1Chat_5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "It sounds yummy.", "Quest1Chat_6")
	StartConversation(conversation, NPC, Spawn, "I have already prepared the pie and crust and the rest of the gravy filling. Now to grill up the meat and ice shrooms and add them.")
end

function Quest1Chat_6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I can't wait.", "Quest1Chat_7")
	StartConversation(conversation, NPC, Spawn, "It is indeed. Now to cook it and it will be ready to eat.")
end

function Quest1Chat_7(NPC, Spawn)
	AddSpawnAccess(GetSpawn(NPC, 4701845), Spawn)
	SetStepComplete(Spawn, KestrelPie, 3)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	AddConversationOption(conversation, "I will! Thanks, Alice.")
	StartConversation(conversation, NPC, Spawn, "There, finished! Go ahead, take a slice!")
end

function OfferKestrelPie(NPC, Spawn)
	OfferQuest(NPC, Spawn, KestrelPie)
end

