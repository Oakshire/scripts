--[[
    Script Name    : SpawnScripts/Freeport/Tarakh.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.12 04:07:33
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/tarakh/fprt_hood03/qst_barpatrontarakh.mp3", "", "", 3608596443, 357856972, Spawn)
    AddConversationOption(conversation, "Big talk from a little rat.", "dlg01")
    AddConversationOption(conversation, "My apologies, I will move on.")
    StartConversation(conversation, NPC, Spawn, "Keep your tongue to yourself, lest you find it missing.")
end

function dlg01(NPC, Spawn)
 FaceTarget(NPC, Spawn)
 conversation = CreateConversation()
 PlayFlavor(NPC, "voiceover/english/tarakh/fprt_hood03/qst_barpatrontarakh000.mp3", "", "brandish", 33100111, 1117280474, Spawn)
 AddConversationOption(conversation, "It doesn't surprise me that you are a dirty little grave robber.")
 StartConversation(conversation, NPC, Spawn, "Try me!  First I'll gut you then I'll return to your grave to rob it!  Though it's unlikely you would have anything of value in your pine box.")
end


function respawn(NPC)

end

