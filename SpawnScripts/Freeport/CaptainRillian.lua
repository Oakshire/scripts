--[[
    Script Name    : SpawnScripts/Freeport/CaptainRillian.lua
    Script Author  : Premierio015
    Script Date    : 2021.04.24 06:04:09
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    local conversation = CreateConversation()
    AddConversationOption(conversation, "Goodbye.")
    StartConversation(conversation, NPC, Spawn, "Unless you have a trade manifest manifest that need approval, I need you to keep moving. All Hail the Overlord!")
end

function respawn(NPC)
	spawn(NPC)
end