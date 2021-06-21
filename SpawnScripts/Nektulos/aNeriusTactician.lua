--[[
    Script Name    : SpawnScripts/Nektulos/aNeriusTactician.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.20 09:06:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function aggro(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/optional5/human_nerrius_marauders/ft/human/human_nerrius_marauders_1_aggro_gm_f9b8657.mp3", "I'll send you to the Hold of Prexus", "", 1904067733, 1508799289, Spawn)
end