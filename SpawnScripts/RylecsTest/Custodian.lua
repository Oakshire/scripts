--[[
    Script Name    : SpawnScripts/RylecsTest/Custodian.lua
    Script Author  : Rylec
    Script Date    : 2021.02.16 12:02:34
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random (1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1008.mp3", "", "", 0, 0, Spawn)

    Say(NPC, "Welcome to the Animation Hall. Hail a person and he will tell you his secret!")
end

function respawn(NPC)

end

