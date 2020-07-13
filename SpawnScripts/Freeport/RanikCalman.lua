--[[
    Script Name    : SpawnScripts/Freeport/RanikCalman.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 02:07:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/merchant_ranik_calman/fprt_east/ranikcalman000.mp3", "", "", 2125799617, 970361473, Spawn)
    AddConversationOption(conversation, "Thanks for the info.")
    StartConversation(conversation, NPC, Spawn, "Aye. Welcome to the Seafarer's Roost. Been out at sea for a while, or just stopping through? Put some coin in my hand and I'll sell ye drinks until ye sail out again.")
end

function respawn(NPC)

end

