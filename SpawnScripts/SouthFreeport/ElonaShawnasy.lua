--[[
    Script Name    : SpawnScripts/SouthFreeport/ElonaShawnasy.lua
    Script Author  : Dorbin
    Script Date    : 2022.03.20 05:03:05
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
					PlayFlavor(NPC, "voiceover/english/kerran_eco_evil_1/ft/kerran/kerran_eco_evil_1_hail_gm_faa98b82.mp3", "Honest as a Kerra when the fish are out of reach.", "nod", 1619896826, 2577563009, Spawn)

end

function respawn(NPC)
	spawn(NPC)
end