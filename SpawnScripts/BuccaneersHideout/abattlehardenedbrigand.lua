--[[
    Script Name    : SpawnScripts/BuccaneersHideout/abattlehardenedbrigand.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.17 01:12:30
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function aggro(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_3_halfhealth_gf_267aa673.mp3", "Send for reinforcements!  Their warriors are skilled.", "", 2527774659, 2542349358, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_2_death_gf_747d38d7.mp3", "Don't fear death! There is no surrender!", "", 1668075339, 3492211420, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional5/barbarian_base_2/ft/barbarian/barbarian_base_2_1_aggro_gf_73da4109.mp3", "So many choices of who to kill!", "", 3668044517, 3454415980, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_2_aggro_gf_394a7fe3.mp3", "Not sneaky enough to get past me.", "", 1014195867, 4030043484, Spawn, 0)
end
end

function death(NPC,Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/barbarian_base_1/ft/barbarian/barbarian_base_1_1_death_gf_9f33cf68.mp3", "Don't break! Hold the line!", "", 4168139414, 1969505231, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/barbarian_base_1/ft/barbarian/barbarian_base_1_2_death_gf_747d38d7.mp3", "Don't fear death! There is no surrender!", "", 1668075339, 3492211420, Spawn, 0)
end
end

function respawn(NPC)
	spawn(NPC)
end