--[[
    Script Name    : SpawnScripts/Freeport/DrundMordgraahlSkullsprain.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 06:07:33
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    PlayFlavor(NPC, "voiceover/english/optional1/mordgraahl_skullsprain/fprt_north/mordgraahl_skullsprain.mp3", "", "", 1415851457, 630090694, Spawn)
    AddConversationOption(conversation, "I didn't mean any offense.  I'll be going now.")
    StartConversation(conversation, NPC, Spawn, "Commoner! You dare to speak so freely to a Drund in this place of reverence?! You best have good reason for this intrusion.")
end

function respawn(NPC)

end

