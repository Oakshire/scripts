--[[
    Script Name    : SpawnScripts/BuccaneersHideout/ameanbrigandcook.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.17 05:12:20
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function death(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/optional5/gnome_base_2/ft/gnome/gnome_base_2_1_death_gm_dcc156f6.mp3", "Somebody find a way to get us out of here!", "", 3389043910, 2625252979, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end