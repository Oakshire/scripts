--[[
    Script Name    : SpawnScripts/Freeport/ThaumaturgeFrostheart.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 06:07:21
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    local choice = math.random(1, 5)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional5/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_hail_gf_dd0b4913.mp3", "Hah! New around these parts?", "hello", 2043369031, 2892870215, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/optional5/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_hail_gf_431b37d1.mp3", "Watch yerself, this city can be rough.", "wink", 2960753062, 3533801971, Spawn)
   end
end

function respawn(NPC)

end

