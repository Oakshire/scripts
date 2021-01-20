--[[
    Script Name    : SpawnScripts/qeynos_combined02/aninjuredBaubbleshirecitizen133771769.lua
    Script Author  : Rylec
    Script Date    : 2021.01.19 04:01:42
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, 2000, "hairstyle")
end

function hailed(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1039.mp3", "", "", 0, 0, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function hairstyle(NPC)
    math.randomseed(os.time())
    choice = math.random(1133,1140)
    SpawnSet(NPC, "hair_type", choice)
end