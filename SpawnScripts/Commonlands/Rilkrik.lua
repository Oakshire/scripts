--[[
    Script Name    : SpawnScripts/Commonlands/Rilkrik.lua
    Script Author  : Premierio015
    Script Date    : 2021.01.03 08:01:57
    Script Purpose : 
                   : 
--]]

local AnOrcishTrinket = 5254

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if not HasQuest(Spawn, AnOrcishTrinket) then
    PlayFlavor(NPC, "", "Not everything I have for sale is useful to everyone. Keep that in mind.", "", 1689589577, 4560189, Spawn)
    elseif GetQuestStep(Spawn, AnOrcishTrinket) == 1 then
    local conversation = CreateConversation()
	AddConversationOption(conversation, "Do you know much about orcs?", "Option1")
	StartConversation(conversation, NPC, Spawn, "Not everything I have for sale is useful to everyone. Keep that in mind.")
end
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What can you tell me about this item?", "Option2")
	StartConversation(conversation, NPC, Spawn, "Hah, guess you've got no idea who you're talking to. Rilkrik here. I'm somewhat of an orc scholar, in all honesty.")
end


function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Huh?", "Option3")
	StartConversation(conversation, NPC, Spawn, "By Argorym's blade!")
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Raegnir? Argorym?", "Option4")
	StartConversation(conversation, NPC, Spawn, "A saying among orc scholars... I guess it's sort of elitist, Raegnir isn't that widely known, but the blade is and Raegnir held it. Knowledge of obscure trivia helps make one feel special. Anyway, this is part of the blade from which that saying originates: Argorym's blade.")
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What did he seek?", "Option5")
	StartConversation(conversation, NPC, Spawn, "Argorym is an orc of legend about whom little is known. Feared in combat, immortal to his enemies, and so on. Raegnir was one of many Deathfist outcasts who came to live in the Commonlands. He rallied orcs under his banner. Unlike most orc leaders he never sought to create a massive army of orcs.")
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "Does he haunt these lands?", "Option6")
	StartConversation(conversation, NPC, Spawn, "Raegnir sought only the strongest, fiercest orcs. His army--squad may be a better word to describe it--was quite feared once. He led a mission within the walls of Freeport--can you imagine that? An orc INSIDE Freeport--and was killed by orcs who thought a few shots from a catapult might help his mission. They brought down a building on Raegnir's entire crew and an unlucky guard captain. If you've found a part of his blade then perhaps you can be the one to return it to him.")
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "How do I respect his memory?", "Option7")
	StartConversation(conversation, NPC, Spawn, "Not exactly, but his grief is known to all who know him. He was no mere orc, Ighi. To respect the memory of a fierce warrior is neither shameful nor treasonous.")
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "What do I do there?", "Option8")
	StartConversation(conversation, NPC, Spawn, "Gather the remnants of his sword. Legend says it was broken down, the blade and the two jewels: the children of the sky. The leather wrap has long since rotted, I am certain, but that is less important than the blade and the jewels. Once you have collected these items travel to the Siege Lands.")
end


function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I think I can do this.", "Option9")
	StartConversation(conversation, NPC, Spawn, "Find the spirit of Raegnir and offer the blade pieces to him. Whatever gods you worship and wherever your alliances stand, Raegnir will appreciate the offer.")
end


function Option9(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()

	AddConversationOption(conversation, "I will find them.", "Option10")
	StartConversation(conversation, NPC, Spawn, "Good, gather all the pieces: Argorym's blade, the Daughter of the Sky, and the Son of the Sky. With these Raegnir's memory will be honored.")
end

function Option10(NPC, Spawn)
    SetStepComplete(Spawn, AnOrcishTrinket, 1)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	StartConversation(conversation, NPC, Spawn, "Good luck!")
end





function respawn(NPC)

end

