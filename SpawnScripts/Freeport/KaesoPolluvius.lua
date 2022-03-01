--[[
    Script Name    : SpawnScripts/Freeport/KaesoPolluvius.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.22 09:07:53
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/optional1/kaeso_polluvius/fprt_south/kaesopolluvius000.mp3", "", "", 100397552, 1288642340, Spawn)
    AddConversationOption(conversation, "No.")
    StartConversation(conversation, NPC, Spawn, "You looking for someone?") 
end

function respawn(NPC)

end

