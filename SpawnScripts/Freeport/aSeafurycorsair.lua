--[[
    Script Name    : SpawnScripts/Freeport/aSeafurycorsair.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.11 09:07:05
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if GetRace(NPC) == 9 and GetGender(NPC) == 2 then
    local choice = math.random(1, 2)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_hail_gf_1e51f755.mp3", "Yes, yes, hello. I'm busy.", "hello", 4117973487, 2991449240, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_hail_gf_93dc38d4.mp3", "Oh, drat, I hope not. Oh, sorry, I thought you might have meant the weather.", "confused", 1692525966, 615682275, Spawn)
end
   end
      end

function respawn(NPC)

end

