--[[
    Script Name    : SpawnScripts/Freeport/ThaumaturgePulo.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 06:07:26
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 5)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_dismalrage/ft/eco/evil/human_male_eco_evil_dismalrage_hail_gm_c41a9599.mp3", "I've never seen any group that's as undisciplined as the Freeport Militia.", "", 2881733735, 1430887225, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_dismalrage/ft/eco/evil/human_male_eco_evil_dismalrage_hail_gm_ccbccf16.mp3", "I only hope the Arcane Scientists put as much dedication into serving our city as to their work.", "", 1096698116, 2189886869, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_dismalrage/ft/eco/evil/human_male_eco_evil_dismalrage_hail_gm_83d81c66.mp3", "The Seafury Buccaneers are a corrupted bunch that can not be trusted to do anything.", "", 1054918218, 3551861508, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_dismalrage/ft/eco/evil/human_male_eco_evil_dismalrage_hail_gm_777548f0.mp3", "You just can't trust the Coalition of Tradesfolke to do any business for you.", "", 329084664, 879226036, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/human_eco_evil_dismalrage/ft/eco/evil/human_male_eco_evil_dismalrage_hail_gm_70f99cef.mp3", "The arcane power of Dismal Rage is what gives spiritual strength to us all.", "", 4234456471, 4189553847, Spawn)
   end
end

function respawn(NPC)

end

