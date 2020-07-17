--[[
    Script Name    : SpawnScripts/Freeport/XeuxaFoamheart.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.16 06:07:47
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "xeuxa_foamheart/fprt_north/trainer_fury001.mp3", "", "", 3851609846, 2203832740)
    AddConversationOption(conversation, "Just looking.")
    StartConversation(conversation, NPC, Spawn, "What brings you to the Temple of War, "..GetName(Spawn).." ?")
end

function respawn(NPC)

end

