--[[
	Script Name	: SpawnScripts/DarklightWood/Aunthrae.lua
	Script Purpose	: Aunthrae 
	Script Author	: fearfx
	Script Date	: 2017.01.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local HopefulNetReturns = 160
local WhatsInDemand = 142

function spawn(NPC)
	ProvidesQuest(NPC, HopefulNetReturns)
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

	if not HasQuest(Spawn, HopefulNetReturns) and not HasCompletedQuest(Spawn, HopefulNetReturns) and HasCompletedQuest(Spawn, WhatsInDemand) then
		PlayFlavor(NPC, "aunthrae/darklight_wood/tvatar_post/aunthrae_revamp/aunthrae001.mp3", "", "", 715895592, 1731061060, Spawn)
		AddConversationOption(conversation, "Perhaps.", "Quest_HopefulNetReturns")
		AddConversationOption(conversation, "Not at this time.")
		StartConversation(conversation, NPC, Spawn, "Stay a moment and hear me out, Villii. I see you helping my master. Perhaps you'd be willing to help me!")
	end
end

function Quest_HopefulNetReturns(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "What can we do?", "Quest_HopefulNetReturns_01")
	StartConversation(conversation, NPC, Spawn, "Supplies are becoming harder and harder to come by here at the outpost. If Hate's Envy doesn't get their act together and send us more supplies soon, I fear we might face mass desertion, or worse, revolt!")
end

function Quest_HopefulNetReturns_01(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Yes, what's her name?", "Quest_HopefulNetReturns_02")
	AddConversationOption(conversation, "Sorry, I can't help right now.")
	StartConversation(conversation, NPC, Spawn, "Foodstuffs and rations are probably the most important thing we need at the moment. Ilmtar dispatched someone to see whether or not she could catch us fish from the Lower Tendril, however she has yet to report back. Would you go look for her?")
end

function Quest_HopefulNetReturns_02(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "I will find her.", "QuestOffer_HopefulNetReturns")
	StartConversation(conversation, NPC, Spawn, "Great. Her name is Dirzdia T'Zauvirr. As I said, she was sent to the Searing Tendril River, southwest from T'Vatar Oupost. Find her and give her this net I managed to scrounge up. Hopefully it will help her catch us some food.")
end

function QuestOffer_HopefulNetReturns(NPC, Spawn)
	OfferQuest(NPC, Spawn, HopefulNetReturns)
end