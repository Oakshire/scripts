--[[
    Script Name    : SpawnScripts/qeynos_combined02/KeliaSpiritward.lua
    Script Author  : Rylec
    Script Date    : 2021.01.25 06:01:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1025.mp3", "", "", 0, 0, Spawn)

    PlayAnimation(NPC, 10745)
    Say(NPC, "This river is beautiful, is it not?  I love watching the water flow through it.")
end

function respawn(NPC)
    spawn(NPC)
end

