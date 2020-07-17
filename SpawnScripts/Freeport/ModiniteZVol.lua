--[[
    Script Name    : SpawnScripts/Freeport/ModiniteZVol.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.16 06:07:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/modinite_z_vol/fprt_north/modinitezvol001.mp3", "", "", 285079217, 2983261764, Spawn)
    AddConversationOption(conversation, "I'll take your advice on it. ")
    StartConversation(conversation, NPC, Spawn, "Only through intense suffering can one be purified of all weaknesses and frailty.  The Threshing separates the weak willed from the mighty in faith.  Pray that you are not found wanting when your personal Threshing comes...")
end

function respawn(NPC)

end

