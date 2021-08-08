--[[
	Script Name		:	SpawnScripts/Antonica/Flores.lua
	Script Purpose	:	Flores
	Script Author	:	Jabantiz, premierio015
	Script Date		:	08/29/2019
	Script Notes	:	Auto-Generated from a chat log using SpawnScriptDesigner
--]]

local DeliveriesForFlores = 5333 -- Deliveries For Flores Quest

function spawn(NPC)
ProvidesQuest(NPC, DeliveriesForFlores)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/merchant_flores/antonica/merchantflores000.mp3", "", "",  149465216, 3128258097)
    if not HasQuest(Spawn, DeliveriesForFlores) and not HasCompletedQuest(Spawn, DeliveriesForFlores) then
	AddConversationOption(conversation, "I'm looking for work. Do you have any tasks that need done? ", "Option1")
	elseif GetQuestStep(Spawn, DeliveriesForFlores) == 3 then
	AddConversationOption(conversation, "I'm back with the pouches.", "Option2")
	end
	AddConversationOption(conversation, "I don't need anything right now, thanks.")
	StartConversation(conversation, NPC, Spawn, "Step right up! My wares stand up to any found in the city!  Made by the finest Qeynosian crafters, they are!")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/merchant_flores/antonica/merchantflores001.mp3", "", "", 4230827236, 573418930, Spawn)
	AddConversationOption(conversation, "Does it pay well?  Sounds like a pretty decent hike.", "offer")
	AddConversationOption(conversation, "No thanks.  The far reaches sounds further than I'm willing to go.")
	StartConversation(conversation, NPC, Spawn, "I certainly do. I need to deliver supplies to a couple of my merchants out in the far reaches of Antonica.  Business is so good right now that I hate to close up shop. How would you like to deliver their supplies?")
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/merchant_flores/antonica/merchantflores003.mp3", "", "", 741997082, 1076579882, Spawn)
	AddConversationOption(conversation, "Here you are. ", "Option3")
	StartConversation(conversation, NPC, Spawn, "So you are!  Well done.  Let me take a look at those pouches, and I'll see how much I can afford to pay you.")
end


function Option3(NPC, Spawn)
    SetStepComplete(Spawn, DeliveriesForFlores, 3)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	PlayFlavor(NPC, "voiceover/english/merchant_flores/antonica/merchantflores004.mp3", "", "", 2648431364, 4291369549, Spawn)
	AddConversationOption(conversation, "Not at the moment thanks. Perhaps I'll return later to see if you need any further assistance. ")
	StartConversation(conversation, NPC, Spawn, "Splendid! The merchants are doing very well. Here's your share. Now, why don't you use your reward to buy my fine merchandise?")
end



function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, DeliveriesForFlores)
end









