--[[
    Script Name    : SpawnScripts/NorthQeynos/Meredeth.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.23 03:04:40
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/merchant/highelf_merchant_service_good_1_hail_gf_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 3279499948, 2931921467, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end