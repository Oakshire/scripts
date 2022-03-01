--[[
    Script Name    : SpawnScripts/Freeport/ElmaLowe.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.20 07:07:48
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/elma_lowe/fprt_north/elmalowe000.mp3", "", "", 3610495310, 1230069492, Spawn)
    AddConversationOption(conversation, "I'll take a look around.")
    StartConversation(conversation, NPC, Spawn, "Come in. Come in.  Welcome to the Jade Tiger's Den, the finest tavern in all of Freeport.  Feel free to browse our menu. I personally guarantee that we serve only the highest-quality food and brews.")
end

function respawn(NPC)

end

