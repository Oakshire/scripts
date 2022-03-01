--[[
    Script Name    : SpawnScripts/qeynos_combined02/InitiateTara.lua
    Script Author  : Rylec
    Script Date    : 2021.02.14 04:02:57
    Script Purpose : 
                   : 
--]]

    local count = 1

function spawn(NPC)

end

function hailed(NPC, Spawn)
    if count == 1 then
        stand(NPC, Spawn)   
    elseif count > 1 and count < 15 then
        count = count + 1
        PlayFlavor(NPC, "voiceover/english/optional1/initiate_tara/qey_elddar/100_monk_initiate_tara_token1_9ac42d88.mp3", "Tread softly and speak your purpose.", "", 3516598133, 1750026138, Spawn)
    else
        count = 1
        PlayFlavor(NPC, "voiceover/english/optional1/initiate_tara/qey_elddar/100_monk_initiate_tara_token1_9ac42d88.mp3", "Tread softly and speak your purpose.", "", 3516598133, 1750026138, Spawn)
    end

    AddTimer(NPC, 40000, "Sit")    
end

function respawn(NPC)
    spawn(NPC)
end

function stand(NPC, Spawn)
    SpawnSet(NPC, "visual_state", "0")
    PlayAnimation(NPC, "539")
    AddTimer(NPC, 1500, "turn", 1, Spawn)
    count = count + 1
end

function turn(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    AddTimer(NPC, 1000, "talk")
end

function talk(NPC)
    PlayFlavor(NPC, "voiceover/english/optional1/initiate_tara/qey_elddar/100_monk_initiate_tara_token1_9ac42d88.mp3", "Tread softly and speak your purpose.", "", 3516598133, 1750026138, Spawn)
end

function Sit(NPC)
    PlayAnimation(NPC, "538")
    AddTimer(NPC, 1200, "countReset")
end


function countReset(NPC)
    SpawnSet(NPC, "visual_state", "540")
    count = 1
end