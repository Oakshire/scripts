--[[
    Script Name    : SpawnScripts/QeynosHarbor/TanuaDorlin.lua
    Script Author  : Dorbin
    Script Date    : 2022.04.16 12:04:34
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/armorsmith/barbarian_armorsmith_service_good_1_hail_gf_bb02310.mp3", "Coin is no object when gaining protection from your enemies.  What price can be put on your safety? ", "glare", 1808847364, 1800754828, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/armorsmith/barbarian_armorsmith_service_good_1_hail_gf_af50709c.mp3", "I have some nice new suits of chain that have stood up very well.  Would you like to see them?", "shrug", 2528208011, 314481755, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/armorsmith/barbarian_armorsmith_service_good_1_hail_gf_db7232a3.mp3", "Well, that suit is looking a mite worn.  Can I interest you in a new suit of fine armor? ", "ponder", 2370049606, 3595933310, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/armorsmith/barbarian_armorsmith_service_good_1_hail_gf_58a92b79.mp3", "You can never be too careful when it comes to protection.  Here, try on one of these.", "agree", 1311124231, 2419539486, Spawn, 0)
	end
end