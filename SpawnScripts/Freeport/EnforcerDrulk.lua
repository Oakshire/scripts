--[[
    Script Name    : SpawnScripts/Freeport/EnforcerDrulk.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 08:08:03
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "enforcer_drulk/fprt_hood1/quests/dreadnaught_drulk001.mp3", "", "", 1553522469, 3808275354, Spawn)
    AddConversationOption(conversation, "Nothing.")
    StartConversation(conversation, NPC, Spawn, "What do you want, little one?")
end

function respawn(NPC)

end

