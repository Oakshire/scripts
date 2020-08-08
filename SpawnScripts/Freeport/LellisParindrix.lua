--[[
    Script Name    : SpawnScripts/Freeport/LellisParindrix.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 08:08:21
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_1_1048.mp3", "", "", 0, 0, Spawn)
    AddConversationOption(conversation, "I SAID THAT I'M LEAVING!")
    StartConversation(conversation, NPC, Spawn, "Eh? Speak up!")
end

function respawn(NPC)

end

