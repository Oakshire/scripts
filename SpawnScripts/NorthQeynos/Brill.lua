--[[
    Script Name    : SpawnScripts/NorthQeynos/Brill.lua
    Script Author  : Dorbin
    Script Date    : 2022.05.17 10:05:43
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
    local choice = MakeRandomInt(1,4)
	FaceTarget(NPC, Spawn)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/halfling_eco_good_1/ft/service/alchemist/halfling_alchemist_service_good_1_hail_gm_a8ed74c7.mp3", "There are no refunds for caster error at this shop! Oh ... hello you're not here about a refund.", "no", 2075394375, 630243730, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/halfling_eco_good_1/ft/service/alchemist/halfling_alchemist_service_good_1_hail_gm_ec533e4c.mp3", "Are you wounded?  I just made up a fresh batch of healing potions an hour ago.", "hello", 2688473405, 4089604259, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/halfling_eco_good_1/ft/service/alchemist/halfling_alchemist_service_good_1_hail_gm_59de96bd.mp3", "What happened to the highly explosive bottle that was on my desk?  Have you seen it?", "peer", 1039692997, 675274206, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional2/halfling_eco_good_1/ft/service/alchemist/halfling_alchemist_service_good_1_hail_gm_efd903ba.mp3", "Hello, adventurer! Are you looking for a specific potion or ingredient?", "agree", 1413906559, 1372883990, Spawn, 0)
    end
end

function respawn(NPC)
	spawn(NPC)
end