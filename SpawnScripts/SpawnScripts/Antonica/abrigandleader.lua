--[[
    Script Name    : SpawnScripts/Antonica/abrigandleader.lua
    Script Author  : Premierio015
    Script Date    : 2020.05.23 08:05:23
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
         
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function aggro(NPC, Spawn)
PlayFlavor(NPC, "","You fool, we've already recovered the book you seek! We'll use its secrets to raise our greatest leader.", "", 1689589577, 4560189)
end

function death(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/optional3/human_base_1/ft/human/human_base_1_1_aggro_gf_583690dc.mp3", "Summon help!  We have invaders!", "", 1598905349, 2204481929)
end