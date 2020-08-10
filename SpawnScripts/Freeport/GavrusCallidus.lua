--[[
    Script Name    : SpawnScripts/Freeport/GavrusCallidus.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.09 06:08:46
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/gavrus_callidus/fprt_west/gavrus_callidus000.mp3", "", "", 3741412341, 4250714914, Spawn)
    AddConversationOption(conversation, "I don't want anything from a condemned man.")
    StartConversation(conversation, NPC, Spawn, "What're you doing here?  You don't look like the executioner.")

end

function respawn(NPC)

end

