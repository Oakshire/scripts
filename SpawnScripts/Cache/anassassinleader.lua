--[[
    Script Name    : SpawnScripts/Cache/anassassinleader.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.05 02:12:36
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function aggro(NPC,Spawn)
    choice = MakeRandomInt(1,4)
    if choice ==1 then
	PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_aggro_gf_8e7390a8.mp3", "Welcome to torment and destruction!", "", 3770648926, 2897017212, Spawn)
    elseif choice ==2 then
	PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_aggro_gf_fb890c79.mp3", "I have no time for meddlers.  Destroy them!", "", 1947039155, 2094447273, Spawn)
    elseif choice ==3 then
	PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_battle_gf_ef48e73d.mp3", "Kneel before me, and I may spare you!", "", 1856378126, 584491690, Spawn)
    elseif choice ==4 then
	PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_aggro_gf_ded507db.mp3", "More intruders to deal with?  Stop them!", "", 338410258, 2808797910, Spawn)
    end
end

function death(NPC,Spawn)
	PlayFlavor(NPC, "voiceover/english/optional3/darkelf_base_2/ft/darkelf/darkelf_base_2_1_halfhealth_gf_8d198fee.mp3", "You may escape, but we will find you!", "", 1924616636, 4174763308, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end