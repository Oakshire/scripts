--[[
    Script Name    : SpawnScripts/Freeport/VassiDarkscale.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.21 06:07:54
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    
    PlayFlavor(NPC, "voiceover/english/vassi_darkscale/fprt_north/quests/vassi_darkscale/vassi017.mp3", "", "", 3845539405, 604412982, Spawn)
    AddConversationOption(conversation, "...")
    StartConversation(conversation, NPC, Spawn, "Vassi does not like the looks of you.  Please move out of his view so he may continue to enjoy it.")
end

function respawn(NPC)

end

