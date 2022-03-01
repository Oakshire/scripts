--[[
    Script Name    : SpawnScripts/Freeport/ViscountGelvonius.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 06:08:22
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/viscount_gelvonius/fprt_west/100_soc_human_militia_officer_gelvonius_no_4a43e5be.mp3", "Hail to you as well. You're either very brave or very foolish to address me so casually. Stand at attention when you speak to me, citizen! Freeport is at war, and I've no time for your incoherent ramblings.", "", 2994522734, 1398023937, Spawn) 
end

function respawn(NPC)

end

