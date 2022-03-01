--[[
    Script Name    : SpawnScripts/Freeport/aFreeportresident.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.13 08:07:34
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if GetRace(NPC) == 9 and GetGender(NPC) == 1 then
    local choice = math.random(1, 7)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gm_e029416.mp3", "You're lucky there are witnesses watching us right now.", "cutthroat", 2950300370, 3231135751, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "There's plenty coin to be made around here, particularly if you're not burdened with morals.", "scheme", 1689589577, 4560189, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gm_c467886b.mp3", "If you're looking for trouble, I've got a whole fistful of it waiting for you.", "threaten", 2550764265, 16200429, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "voiceover/english/optional2/human_eco_evil_2/ft/human/human_eco_evil_2_hail_gm_daf01a19.mp3", "If I had another five or six ales, maybe I wouldn't mind talking to you.", "chuckle", 2320297447, 2667582898, Spawn)
    elseif choice == 5 then
    PlayFlavor(NPC, "", "Knowing the right people will keep you safe in this city.  The same could be said of the wrong people", "chuckle", 1689589577, 4560189, Spawn)
    elseif choice == 6 then
    PlayFlavor(NPC, "", "Steer clear of those Wraithguards.  That is, if you know what's good for you.", "scold", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "", "The Overlord be praised!  The splendor of this city has been restored.", "smile", 1689589577, 4560189, Spawn)
    end
       end
    if GetRace(NPC) == 1 and GetGender(NPC) == 1 then
    local choice = math.random(1, 7)
    if choice == 1 then
    PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_hail_gm_5d807cef.mp3", "What I would give to strike down a Feir'Dal in battle.", "scream", 4054961943, 512995397, Spawn)
    elseif choice == 2 then
    PlayFlavor(NPC, "", "It was the Thexian Teir'Dal that caused the trouble in Freeport.  They need to be wiped out.", "nod", 1689589577, 4560189, Spawn)
    elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_hail_gm_beeaa42c.mp3", "I would never raise a hand to one below my station.  That's what servants are for.", "wink", 3711989495, 2082719188, Spawn)
    elseif choice == 4 then
    PlayFlavor(NPC, "", "If ever a Wraithguard calls upon you, I suggest you do not hesitate to comply.", "agree", 1689589577, 4560189, Spawn)
    else
    PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_3/ft/darkelf/darkelf_eco_evil_3_hail_gm_60bb96c.mp3", "If you do it right, pain is the gift that keeps on giving", "chuckle", 1148322483, 153866885, Spawn)
    end
       end
end
 

function respawn(NPC)

end

