--[[
    Script Name    : SpawnScripts/Nektulos/aNeriusCommander.lua
    Script Author  : Premierio015
    Script Date    : 2021.06.20 08:06:11
    Script Purpose : 
                   : 
--]]

require("SpawnScripts/Generic/GenericCombatVoiceOvers")

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function death(NPC, Spawn)
PlayFlavor(NPC, "voiceover/english/optional5/human_nerrius_marauders/ft/human/human_nerrius_marauders_1_death_gm_b5fb5156.mp3", "Who is going to swab the deck now?!", "", 4134447792, 1297463866, Spawn)
end

function aggro(NPC, Spawn)
generic_aggro(NPC, Spawn)
end