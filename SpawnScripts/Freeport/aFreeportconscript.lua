--[[
    Script Name    : SpawnScripts/Freeport/aFreeportconscript.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.11 08:07:36
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if GetRace(NPC) == 0 and GetGender(NPC) == 1 then
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_hail_gm_dd0b4913.mp3", "Hah! New around these parts?", "hello", 3252919562, 342739868, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_darkelf_gm_bc3d6b10.mp3", "Straying a bit, are we?", "glare", 4033200255, 1327891280, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/barbarian_eco_race_evil/ft/eco/evil/barbarian_eco_race_evil_hail_gm_431b37d1.mp3", "Watch yerself, this city can be rough.", "wink", 1560541305, 226492698, Spawn)
 end
    end
       end

function respawn(NPC)

end

