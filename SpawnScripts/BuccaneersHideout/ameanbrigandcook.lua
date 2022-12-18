--[[
    Script Name    : SpawnScripts/BuccaneersHideout/ameanbrigandcook.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.17 05:12:20
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function aggro(NPC,Spawn)
	local choice = MakeRandomInt(1,2)
	if choice == 1 then
		PlayFlavor(NPC, "", "What now? More distractions? Great!", "", 0, 0, Spawn, 0)
	elseif choice == 2 then
	    PlayFlavor(NPC, "voiceover/english/optional5/gnome_base_2/ft/gnome/gnome_base_2_1_halfhealth_gm_895967b4.mp3", "Don't let them hit me!", "", 3867000722, 3519508425, Spawn, 0)
end
end



function death(NPC, Spawn)
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional5/gnome_base_2/ft/gnome/gnome_base_2_1_death_gm_dcc156f6.mp3", "Somebody find a way to get us out of here!", "", 3389043910, 2625252979, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional5/gnome_base_2/ft/gnome/gnome_base_2_1_halfhealth_gm_16b76687.mp3", "Not in the head! Not in the head!", "", 4042957456, 3810711869, Spawn, 0)
	elseif choice == 3 then
    PlayFlavor(NPC, "voiceover/english/optional5/gnome_base_2/ft/gnome/gnome_base_2_1_death_gm_47b1882a.mp3", "They'll kill us all!", "", 91120978, 4091470254, Spawn, 0)		
end
end
	


function respawn(NPC)
	spawn(NPC)
end