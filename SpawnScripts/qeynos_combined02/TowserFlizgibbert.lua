--[[
    Script Name    : SpawnScripts/qeynos_combined02/TowserFlizgibbert.lua
    Script Author  : Rylec
    Script Date    : 2021.01.24 04:01:01
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    EmoteLoop(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    conversation = CreateConversation()
    AddConversationOption(conversation, "Nothing.")
    StartConversation(conversation, NPC, Spawn, "Well? What do you want?")

    math.randomseed(os.time())
    voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1040.mp3", "", "", 0, 0, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function EmoteLoop(NPC)
    PlayAnimation(NPC, 11099)
    AddTimer(NPC, 6000, "EmoteLoop")	
end