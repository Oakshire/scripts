--[[
    Script Name    : SpawnScripts/Commonlands/LucanicKnightInitiate.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.30 07:05:45
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
AddTimer(NPC, 2000, "call", "", Spawn)
SetAggroRadius(NPC, 20)
end

function call(NPC, Spawn)
 PlayFlavor(NPC, "voiceover/english/lucanic_knight_initiate/commonlands/quest/019_quest_lucanic_knight_initiate_shoutout_4eabbb23.mp3", "This time there will be no escape!  Your kind is extinct and you will join them soon!", "", 135976742, 4023420058, Spawn)
end


function attacked(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/human_base_1/ft/human/human_base_1_1_aggro_gm_a30c4f9d.mp3", "To Arms!", "", 1238020980, 748146443, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end