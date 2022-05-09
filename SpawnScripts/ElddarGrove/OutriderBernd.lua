--[[
    Script Name    : SpawnScripts/ElddarGrove/OutriderBernd.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.08 04:05:33
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end


function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,11) <0 then
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
    else
    FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/human/human_eco_good_1_hail_gm_d38d1fff.mp3", "Ah, what have we here? Glad to see you endured the journey here, adventurer.", "hello", 2806352129, 3453714070, Spawn, 0)

end
end

function respawn(NPC)
	spawn(NPC)
end