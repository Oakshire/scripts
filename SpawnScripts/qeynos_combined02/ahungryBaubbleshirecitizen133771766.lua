--[[
    Script Name    : SpawnScripts/qeynos_combined02/ahungryBaubbleshirecitizen133771766.lua
    Script Author  : Rylec
    Script Date    : 2021.01.18 06:01:58
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    AddTimer(NPC, 2000, "selectrace")
end

function hailed(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_"..racevoice..".mp3", "", "", 0, 0, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function selectrace(NPC)
    math.randomseed(os.time())
    local race = math.random(1,4)

    if race == 1 then
        SpawnSet(NPC, "model_type", "107")
        racevoice = 1023
    elseif race == 2 then
        SpawnSet(NPC, "model_type", "108")
        racevoice = 1024
    elseif race == 3 then
        SpawnSet(NPC, "model_type", "121")
        racevoice = 1024
    else
        SpawnSet(NPC, "model_type", "122")
        racevoice = 1023
    end

    choice = math.random(1133,1140)
    SpawnSet(NPC, "hair_type", choice)
end