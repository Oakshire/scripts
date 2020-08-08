--[[
    Script Name    : SpawnScripts/Freeport/CaptainVrondell.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 06:08:14
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/optional5/captain_vrondell/fprt_west/quests/captain_vrondell000.mp3", "", "", 1599544138, 213130892, Spawn)
    AddConversationOption(conversation, "Mercy, great captain. Forgive my foolish actions.")
    StartConversation(conversation, NPC, Spawn, "You dare to approach a militia captain without being summoned? State your business or move along!")
end

function respawn(NPC)

end

