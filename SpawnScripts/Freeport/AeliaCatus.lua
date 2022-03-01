--[[
    Script Name    : SpawnScripts/Freeport/AeliaCatus.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.06 08:08:01
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/optional1/merchant_aelia_catus/fprt_west/mer_aeliacatus.mp3", "", "", 1437950883, 1488099263, Spawn)
    AddConversationOption(conversation, "I'm kind of busy right now.")
    StartConversation(conversation, NPC, Spawn, "Hail, adventurer.  I'm glad you wandered into my shop.")
end

function respawn(NPC)

end

