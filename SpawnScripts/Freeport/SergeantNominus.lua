--[[
    Script Name    : SpawnScripts/Freeport/SergeantNominus.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 06:08:45
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/sergeant_nominus/fprt_south/sergeantnominus000.mp3", "", "", 2687891400, 2549215959, Spawn)
    AddConversationOption(conversation, "I'll just be moving along then.")
    StartConversation(conversation, NPC, Spawn, "Hail, citizen.  If you have something to report, then speak up.  Otherwise, move along.")

end

function respawn(NPC)

end

