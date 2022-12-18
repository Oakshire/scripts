--[[
    Script Name    : SpawnScripts/BuccaneersHideout/ArthegosAlethros.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.17 05:12:17
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function aggro(NPC, Spawn)
		PlayFlavor(NPC, "", "Come h'er! Let's test how sharp my blade is!", "", 0, 0, Spawn, 0)
end


function death(NPC,Spawn)
    if GetGender(NPC)==1 then    
    local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_dervish/ft/human/human_dervish_1_halfhealth_gm_b1dc44d0.mp3", "It's been awhile since anyone fought back!", "", 1623736591, 2832676927, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_dervish/ft/human/human_dervish_1_death_gm_94279fc3.mp3", "All hands! Retreat!", "", 2213603766, 3071153854, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_death_gm_3e24be0b.mp3", "Cover me while we regroup!", "", 144951462, 3922442401, Spawn, 0)
	end
end
end

function victory(NPC,Spawn)
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_victory_gm_4553e1e0.mp3", "Flee now or meet this one's fate.", "", 3032162747, 1359206304, Spawn, 0)
end


function respawn(NPC)
	spawn(NPC)
end