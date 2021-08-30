--[[
    Script Name    : SpawnScripts/Antonica/Cooper.lua
    Script Author  : Premierio015
    Script Date    : 2021.07.21 07:07:18
    Script Purpose : 
                   : 
--]]

local LetterToRiason = 5350


function spawn(NPC)
ProvidesQuest(NPC, LetterToRiason)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if not HasQuest(Spawn,  LetterToRiason) and not HasCompletedQuest(Spawn, LetterToRiason) then
	AddConversationOption(conversation, "No, go ahead... is something the matter?", "Option1")
	end
	AddConversationOption(conversation, "No thanks.")
	StartConversation(conversation, NPC, Spawn, "Feel free to browse my wares... or perhaps you're interested in selling some of yours? Say... no, never mind.")
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I can help you out with that.", "offer")
	AddConversationOption(conversation, "No thanks, sounds a little shady.")
	StartConversation(conversation, NPC, Spawn, "How perceptive of you to notice that I am in dire need of aid. A... close friend of mine... has requested news from the city and, sadly, I've not the time to deliver the repo... err... letter I have for him.")
end



function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, LetterToRiason)
end


function respawn(NPC)
	spawn(NPC)
end