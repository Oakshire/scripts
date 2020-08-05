--[[
    Script Name    : SpawnScripts/Freeport/asuspectedrenegade.lua
    Script Author  : Premierio015
    Script Date    : 2020.08.04 06:08:48
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if GetRace(NPC) == 1  and GetGender(NPC) == 2 then
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_hail_gm_eb5fa2b6.mp3", "One day, our lot will improve here.", "sigh", 1462094560, 868024293, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_darkelf_gm_2fb22326.mp3", "We'll rise again, and then nothing will stop us.", "threaten", 1301346574, 4276784701, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/darkelf_eco_race_evil/ft/eco/evil/darkelf_eco_race_evil_darkelf_gm_54a02968.mp3", "What a foul, dirty place this is compared to Neriak.", "sigh", 580466389, 3679414511, Spawn) 
end
   end
      end

function respawn(NPC)

end
