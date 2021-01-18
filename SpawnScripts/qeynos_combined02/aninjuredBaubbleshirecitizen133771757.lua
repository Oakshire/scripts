--[[
    Script Name    : SpawnScripts/qeynos_combined02/aninjuredBaubbleshirecitizen133771757.lua
    Script Author  : Rylec
    Script Date    : 2021.01.17 03:01:44
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1039.mp3", "", "", 0, 0, Spawn)
end

function respawn(NPC)

end

