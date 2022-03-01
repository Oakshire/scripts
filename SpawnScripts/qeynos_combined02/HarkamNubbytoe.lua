--[[
    Script Name    : SpawnScripts/qeynos_combined02/HarkamNubbytoe.lua
    Script Author  : Rylec
    Script Date    : 2021.01.17 03:01:36
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1040.mp3", "Oh, I was not prepared for these types of injuries. No, no.", "heckno", 0, 0, Spawn)
end

function respawn(NPC)

end

