--[[
    Script Name    : SpawnScripts/qeynos_combined02/ahungryBaubbleshirecitizen133771763.lua
    Script Author  : Rylec
    Script Date    : 2021.01.17 04:01:43
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    math.randomseed(os.time())
    local race = math.random(1,4)

    if race == 1 then
        SpawnSet(NPC, "model_type", "107")
        racevoice = 1039
    elseif race == 2 then
        SpawnSet(NPC, "model_type", "108")
        racevoice = 1040
    elseif race == 3 then
        SpawnSet(NPC, "model_type", "121")
        racevoice = 1040
    else
        SpawnSet(NPC, "model_type", "122")
        racevoice = 1039
    end
end

function hailed(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_"..racevoice..".mp3", "", "", 0, 0, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end