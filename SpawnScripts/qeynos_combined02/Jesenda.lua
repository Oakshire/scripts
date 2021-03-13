--[[
    Script Name    : SpawnScripts/qeynos_combined02/Jesenda.lua
    Script Author  : Rylec
    Script Date    : 2021.03.12 06:03:35
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1051.mp3", "", "", 0, 0, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

