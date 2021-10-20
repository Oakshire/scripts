--[[
    Script Name    : SpawnScripts/VerminSnye/GillinBlackfist.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.19 07:10:57
    Script Purpose : 
                   : 
--]]

local InSearchoftheSepulcherofJahnda = 556

function spawn(NPC)
ProvidesQuest(NPC, InSearchoftheSepulcherofJahnda)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if not HasQuest(Spawn, InSearchoftheSepulcherofJahnda) and not HasCompletedQuest(Spawn, InSearchoftheSepulcherofJahnda) then
	AddConversationOption(conversation, "And the ocean wurms feed upon the goblins. ", "Option1")
	end
	AddConversationOption(conversation, "Why do I care about rats swimming in the sea? Farewell.")
	StartConversation(conversation, NPC, Spawn, "The goblins swim quickly across the Tranquil Sea, eh?")
end


function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I am not Ronicus. Farewell.")
	AddConversationOption(conversation, "Sepulcher? What's that?", "offer")
	StartConversation(conversation, NPC, Spawn, "'Sat you Ronicus? The wee zealot says the key to the Sepulcher can be found in one of the catacomb receptacles. Now where's me coin? Funny ... I thought you'd look a bit nastier.")
end


function offer(NPC, Spawn)
OfferQuest(NPC, Spawn, InSearchoftheSepulcherofJahnda)
end



function respawn(NPC)
	spawn(NPC)
end