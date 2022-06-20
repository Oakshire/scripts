--[[
    Script Name    : SpawnScripts/NorthFreeport/BlightSageDestroz.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 01:06:47
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
		PlayFlavor(NPC, "voiceover/english/blight_sage_destroz/fprt_north/100_soc_iksar_dismal_destroz_no_9768138b.mp3", "Insolent swine! For this impudence I should slice open your belly and roast your entrails on a spit.  Do not dare to interrupt my private meditations again!", "", 1756389054, 2842695597, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end