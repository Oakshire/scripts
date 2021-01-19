--[[
    Script Name    : SpawnScripts/qeynos_combined02/ArbuthnotJumroller.lua
    Script Author  : Rylec
    Script Date    : 2021.01.18 05:01:36
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Thanks, but I need to leave now.")
    StartConversation(conversation, NPC, Spawn, "Well, then, what can I do for you?")

    math.randomseed(os.time())
    voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1020.mp3", "", "", 0, 0, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

