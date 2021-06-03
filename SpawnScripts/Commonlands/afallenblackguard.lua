--[[
    Script Name    : SpawnScripts/Commonlands/afallenblackguard.lua
    Script Author  : premierio015
    Script Date    : 2019.01.31 02:01:43
    Script Purpose : 
                   : 
--]]

local AnErodedKey = 5251


function spawn(NPC)
AddTimer(NPC, 5000, "anim")
ProvidesQuest(NPC, AnErodedKey)
end

function anim(NPC, Spawn)
PlayAnimation(NPC, 12166)
AddTimer(NPC, 30000, "anim")
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if not HasQuest(Spawn, AnErodedKey) and not HasCompletedQuest(Spawn, AnErodedKey) then
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What important information?", "Option1")
	AddConversationOption(conversation, "I am sorry but I cannot help.")
	StartConversation(conversation, NPC, Spawn, "I don't have much strength so I will make this quick. I was on assignment to intercept a Bloodskull messenger because he is rumored to have some important information. ")
	PlayFlavor(NPC, "fallen_blackguard/commonlands/qst_fallen_blackguard001.mp3", "", "nod", 4235434346, 1973784174, Spawn)
	elseif GetQuestStep(Spawn, AnErodedKey) < 6 then
	progress(NPC, Spawn)
	elseif GetQuestStep(Spawn, AnErodedKey) == 6 then
	finish(NPC, Spawn)
	elseif HasCompletedQuest(Spawn, AnErodedKey) then
	local conversation = CreateConversation()    
	AddConversationOption(conversation, "I will see what I can find.")
	StartConversation(conversation, NPC, Spawn, "Were you able to break into the excavation site? I am sure there are many riches to be had there.")
end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "How can I help?", "Offer")
	AddConversationOption(conversation, "I am not interested.")
	StartConversation(conversation, NPC, Spawn, "Unfortunately I failed in my attempt to gather this information, but if you are able to locate him I think he is in possession of something that would be worth your while.")
	PlayFlavor(NPC, "fallen_blackguard/commonlands/qst_fallen_blackguard002.mp3", "", "pout", 326567968, 969149751, Spawn)
end


function Offer(NPC, Spawn)
OfferQuest(NPC, Spawn, AnErodedKey)
end

function respawn(NPC)
spawn(NPC)
end


function progress(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "No; I am still investigating.")
	StartConversation(conversation, NPC, Spawn, "Have you found out what the messenger was after?")
	PlayFlavor(NPC, "fallen_blackguard/commonlands/qst_fallen_blackguard004.mp3", "", "nod", 1424723305, 2939944769, Spawn)
end	

function finish(NPC, Spawn)
   SetStepComplete(Spawn, AnErodedKey, 6)
    PlayFlavor(NPC, "fallen_blackguard/commonlands/qst_fallen_blackguard005.mp3", "", "thanks", 2586190464, 2791846728, Spawn)
   	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
   	AddConversationOption(conversation, "I was happy to help.")
	StartConversation(conversation, NPC, Spawn, "I am happy to see that you were able to collect the ore fragments, this seems to be what he was trying to retrieve. It seems that these pieces are able to be fashioned into a key that will allow you access to the Bloodskull excavation site. I hope that you can go forward and defeat the orcs for the trouble they have caused freeport.")
end
