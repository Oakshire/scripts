--[[
    Script Name    : SpawnScripts/CrowsTomb/RollustheSly.lua
    Script Author  : Premierio015
    Script Date    : 2021.10.04 06:10:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	AddConversationOption(conversation, "What? Nevermind.")
	StartConversation(conversation, NPC, Spawn, "To the void with you! You made me coin purse lighter!")
end

function respawn(NPC)
	spawn(NPC)
end