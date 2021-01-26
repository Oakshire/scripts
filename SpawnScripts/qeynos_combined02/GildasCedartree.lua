--[[
    Script Name    : SpawnScripts/qeynos_combined02/GildasCedartree.lua
    Script Author  : Rylec
    Script Date    : 2021.01.25 06:01:35
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/gildas_cedartree/qey_elddar/quests/gildas_cedartree/gildascedartree017.mp3", "Sorry, friend. I can't offer you help at this time. Good day!", "no", 3941972709, 1584350411, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

