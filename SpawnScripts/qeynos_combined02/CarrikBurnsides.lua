--[[
    Script Name    : SpawnScripts/qeynos_combined02/CarrikBurnsides.lua
    Script Author  : Rylec
    Script Date    : 2021.02.18 02:02:50
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    local voice = math.random(1,3)

    PlayFlavor(NPC, "voiceover/english/voice_emotes/greetings/greetings_"..voice.."_1054.mp3", "Idle chat is useless. If you are not here to train, then leave.", "point", 0, 0, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

