--[[
    Script Name    : SpawnScripts/Freeport/LuciusWavedancer.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 04:07:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "lucius_wavedancer/fprt_south/trainer_dirge001.mp3", "", "", 86395307, 631263171, Spawn)
    AddConversationOption(conversation, "Just looking around.")
    StartConversation(conversation, NPC, Spawn, "Good day, Ishal.  What brings you here this fine day?")
end

function respawn(NPC)

end

