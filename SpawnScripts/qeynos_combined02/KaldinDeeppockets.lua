--[[
    Script Name    : SpawnScripts/qeynos_combined02/KaldinDeeppockets.lua
    Script Author  : Rylec
    Script Date    : 2021.01.22 03:01:02
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    math.randomseed(os.time())
    voice = math.random (1,2)

    if voice == 1 then
        PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/100_barkeep_deeppockets_multhail1_b497dcb7.mp3", "Pleased to meet you, I'd be, if circumstances weren't so dire.", "", 3221951518, 4136363260, Spawn)
    else
        PlayFlavor(NPC, "voiceover/english/barkeep_kaldin_deeppockets/qey_village06/100_barkeep_deeppockets_callout_d2d77b95.mp3", "I used to be one of the most famous brewmasters in Qeynos... till the gnolls burnt down me pub!", "", 2446853968, 3962612908, Spawn)
    end
end

function respawn(NPC)
    spawn(NPC)
end

