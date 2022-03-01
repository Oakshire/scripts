--[[
    Script Name    : SpawnScripts/qeynos_combined02/ahungryBaubbleshirecitizen133771767.lua
    Script Author  : Rylec
    Script Date    : 2021.01.17 04:01:43
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    math.randomseed(os.time())
    choice = math.random(1133,1140)
    SpawnSet(NPC, "hair_type", choice)
end

function hailed(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1024.mp3", "", "", 0, 0, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end