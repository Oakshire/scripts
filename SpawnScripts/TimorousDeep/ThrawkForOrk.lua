--[[
    Script Name    : SpawnScripts/TimorousDeep/ThrawkForOrk.lua
    Script Author  : Ememjr
    Script Date    : 2021.01.27 12:01:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
     ProvidesQuest(NPC,5210)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
        AddConversationOption(conversation, "That sounds like a good idea.", "OfferQuest5210")
	AddConversationOption(conversation, "Maybe later.")
	
	StartConversation(conversation, NPC, Spawn, "If you have any interest in crafting, perhaps you should visit Rozokal Niba'mok within Gorowyn.")
end
function OfferQuest5210(NPC, Spawn)
   OfferQuest(NPC, Spawn, 5210)
end
function respawn(NPC)
   spawn(NPC)
end

