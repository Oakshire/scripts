--[[
    Script Name    : SpawnScripts/Freeport/Trtsin.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 03:07:04
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "trtsin/fprt_south/trainer_brigand001.mp3", "", "", 3359790206, 3110964091, Spawn)
    AddConversationOption(conversation, "Just looking around.")
    StartConversation(conversation, NPC, Spawn, "Greetings, " .. GetName(Spawn) .. "  What brings you to the docks today?")
end

function respawn(NPC)

end

