--[[
    Script Name    : SpawnScripts/qeynos_combined02/MarvBoilfist.lua
    Script Author  : Rylec
    Script Date    : 2021.01.17 02:01:42
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1004.mp3", "We need to help the residents of Baubbleshire however we can!", "point", 0, 0, Spawn)
end

function respawn(NPC)

end

