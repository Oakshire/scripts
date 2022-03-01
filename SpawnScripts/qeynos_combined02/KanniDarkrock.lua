--[[
    Script Name    : SpawnScripts/qeynos_combined02/KanniDarkrock.lua
    Script Author  : Rylec
    Script Date    : 2021.02.17 08:02:45
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    EmoteLoop(NPC)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random(1,3)

    PlayAnimation(NPC, 11682)
    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1059.mp3", "", "", 0, 0, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

function EmoteLoop(NPC)
    PlayAnimation(NPC, 11150)
    AddTimer(NPC, math.random(10000,15000), "EmoteLoop")
end