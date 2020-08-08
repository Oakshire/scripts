--[[
    Script Name    : SpawnScripts/Freeport/BaronZafimus.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.07 06:08:29
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/baron_zafimus/fprt_west/100_soc_human_militia_officer_zafimus_no_23f6c2f6.mp3", "Mercy and kindness are for the undisciplined.  Victory follows only from brutality.", "", 2218115443, 3656215650, Spawn)
end

function respawn(NPC)

end

