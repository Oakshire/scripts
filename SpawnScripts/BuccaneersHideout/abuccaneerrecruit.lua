--[[
    Script Name    : SpawnScripts/BuccaneersHideout/abuccaneerrecruit.lua
    Script Author  : Dorbin
    Script Date    : 2022.12.17 04:12:06
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function aggro(NPC,Spawn)
    choice = MakeRandomInt(1,3)
    if choice ==1 then
	PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_583690dc.mp3", "Summon help!  We have invaders!", "", 3340212225, 279643307, Spawn, 0)
    elseif choice ==2 then
	PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a203c9ec.mp3", "Prepare to face your doom, meddler.", "", 1496819882, 365167432, Spawn, 0)
    elseif choice ==3 then
		PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a30c4f9d.mp3", "To arms!", "", 1238020980, 748146443, Spawn, 0)
    end
end

function respawn(NPC)
	spawn(NPC)
end