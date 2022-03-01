--[[
    Script Name    : SpawnScripts/Commonlands/MerchantWilliam.lua
    Script Author  : Premierio015
    Script Date    : 2021.01.03 08:01:33
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/merchant_william/commonlands/merchantwilliam000.mp3", "", "", 3295060090, 1575966932, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "I'm not interested right now.")
    StartConversation(conversation, NPC, Spawn, "Buy here!  Buy now!  Best goods you'll find in all the land.")   
end

function respawn(NPC)

end

