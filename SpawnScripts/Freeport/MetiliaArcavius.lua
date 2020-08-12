--[[
    Script Name    : SpawnScripts/Freeport/MetiliaArcavius.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.11 06:08:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 5)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_coalitionoftradesfolke/ft/eco/evil/human_female_eco_evil_coalitionoftradesfolke_hail_gf_276a219b.mp3", "The souls of the Dismal Rage priests are so dark that their pale look will make you sick before they can ever heal you.", "", 3986145161, 2347838996, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_coalitionoftradesfolke/ft/eco/evil/human_female_eco_evil_coalitionoftradesfolke_hail_gf_bee46698.mp3", "Those Arcane Scientists just spend way too much time studying in their confines. They need to get out more.", "",  1647416091, 3708087662, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_coalitionoftradesfolke/ft/eco/evil/human_female_eco_evil_coalitionoftradesfolke_hail_gf_2b5f7257.mp3", "The Coalition of Tradesfolke sure knows how to make coins fall into their hands.", "", 156316039, 999118411, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_coalitionoftradesfolke/ft/eco/evil/human_female_eco_evil_coalitionoftradesfolke_hail_gf_15b4266c.mp3", "The Seafury Buccaneers don't seem too bright. They probably lost their ability to think from traveling the seas for too long.", "", 1874743335, 3247477803, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_coalitionoftradesfolke/ft/eco/evil/human_female_eco_evil_coalitionoftradesfolke_hail_gf_2747c168.mp3", "The Freeport Militia is a group of hired thugs that are only interested in their own benefits.", "", 1417468938, 1166342004, Spawn)
end
   end

function respawn(NPC)

end

