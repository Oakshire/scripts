--[[
	Script Name	: SpawnScripts/Graveyard/anEthernereguard.lua
	Script Purpose	: an Ethernere guard <Academy of Arcane Science>
	Script Author	: scatman
	Script Date	: 2009.07.25
	Script Notes	: 
--]]

-- This quest is repeatable I think.
local QUEST_1 = 252

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasCompletedQuest(Spawn, QUEST_1) then
		Say(NPC, "May you complete your task without leaving this realm.", Spawn)
	elseif HasQuest(Spawn, QUEST_1) then
		OnQuest1(NPC, Spawn, conversation)
	else
		HailCitizen(NPC, Spawn, conversation)
	end
end

function HailCitizen(NPC, Spawn, conversation)
	PlayFlavor(NPC, "an_ethernere_guard/fprt_adv02_graveyard/ethernere_keeper001.mp3", "", "", 1684681522, 203789175, Spawn)
	AddConversationOption(conversation, "Yes?", "dlg_3_1")
	AddConversationOption(conversation, "I am busy.")
	StartConversation(conversation, NPC, Spawn, "Hail Citizen!")
end

function dlg_3_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "an_ethernere_guard/fprt_adv02_graveyard/ethernere_keeper002.mp3", "", "", 3556340892, 124958826, Spawn)
	AddConversationOption(conversation, "Of course!", "dlg_3_2")
	AddConversationOption(conversation, "I am busy.")
	StartConversation(conversation, NPC, Spawn, "Freeport has need of your services, will you fulfill your duty?")
end

function dlg_3_2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "an_ethernere_guard/fprt_adv02_graveyard/ethernere_keeper003.mp3", "", "", 2377701112, 1112213409, Spawn)
	AddConversationOption(conversation, "What do you need me to do?", "OfferQuest1")
	AddConversationOption(conversation, "I am busy.")
	StartConversation(conversation, NPC, Spawn, "Ancient spirits have recently awoken, their graves disturbed by the graverobbers in this area.  The graverobbers have taken ancient holy relics from them and they wander in search of that which was taken.")
end

function OfferQuest1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function OnQuest1(NPC, Spawn, conversation)
	if GetQuestStep(Spawn, QUEST_1) == 3 then
		AddConversationOption(conversation, "Yes, I returned the relics to the tombs.", "Successful")
		AddConversationOption(conversation, "No, not yet.")
		StartConversation(conversation, NPC, Spawn, "Were you successful in your mission?")
	else
		PlayFlavor(NPC, "", "If you see any graverobbers come tell me immediately.", "", 1689589577, 4560189, Spawn)
	end
end

function Successful(NPC, Spawn)
	SetStepComplete(Spawn, QUEST_1, 3)
	
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "Thank you.")
	StartConversation(conversation, NPC, Spawn, "Excellent. Thank you for your service to Freeport and the Keepers of Ethernere. Please, take this for your trouble.")
end