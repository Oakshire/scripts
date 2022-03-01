--[[
    Script Name    : SpawnScripts/qeynos_combined02/awoundedBaubbleshiredefender133771760.lua
    Script Author  : Rylec
    Script Date    : 2021.01.17 03:01:49
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1025.mp3", "", "", 0, 0, Spawn)
end

function respawn(NPC)

end

