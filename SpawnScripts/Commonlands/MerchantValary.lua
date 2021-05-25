--[[
    Script Name    : SpawnScripts/Commonlands/MerchantValary.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.24 09:05:16
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "I might take a look at what you are selling.")
	StartConversation(conversation, NPC, Spawn, "My wares are the finest in the land. Won't you look?")
end

function respawn(NPC)
	spawn(NPC)
end