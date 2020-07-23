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
    local choice = math.random(1, 3)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_hail_gf_1e51f755.mp3", "Yes, yes, hello. I'm busy.", "hello", 4117973487, 2991449240, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/human_eco_race_evil/ft/eco/evil/human_eco_race_evil_hail_gf_93dc38d4.mp3", "Oh, drat, I hope not. Oh, sorry, I thought you might have meant the weather.", "confused", 1692525966, 615682275, Spawn)
    else
    PlayFlavor(NPC, "", "It's a fine day for evil to flourish!", "smile", 1689589577, 4560189, Spawn)
    end
       end
    if GetRace(NPC) == 14 and GetGender(NPC) == 2 then
    local choice = math.random(1, 3)
    if choice == 1 and GetRace(Spawn) == 1 then
    PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_darkelf_gf_50ad1ae0.mp3", "Treat us badly in Neriak! I laugh now we in same spot!", "chuckle", 3570765081, 2205040834, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_hail_gf_417aa823.mp3", "Nasty scars and boiled tar!  Warriors is what we are!", "itch", 1257994883, 3501955854, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/troll_eco_race_evil/ft/eco/evil/troll_eco_race_evil_hail_gf_f491bc11.mp3", "Tasty treats, lots of meats.", "nod", 357958006, 4074544132, Spawn)
    end
      end
    if GetRace(NPC) == 12 then
    local choice = math.random(1, 2)
    if choice == 1 then
    PlayFlavor(NPC, "", "Drinking the blood of your enemy only makes you stronger.", "chuckle", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "Speak again and I will split your skull in two.", "scold", 1689589577, 4560189, Spawn)
    end
       end
    if GetRace(NPC) == 1 and GetGender(NPC) == 1 then
    PlayFlavor(NPC, "", "It's a fine day for evil to flourish!", "smile", 1689589577, 4560189, Spawn)
    end
       end

function respawn(NPC)

end

