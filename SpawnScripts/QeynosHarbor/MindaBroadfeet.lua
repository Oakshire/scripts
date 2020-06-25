--[[
	Script Name	: SpawnScripts/QeynosHarbor/MindaBroadfeet.lua
	Script Purpose	: Minda Broadfeet <General Goods>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/armorsmith/dwarf_armorsmith_service_good_1_aoi_gf_8c4351aa.mp3", "Don't go into battle unprotected!  Qeynos needs her soldiers to return home safely and we see to it that you do!", "scold", 817367192, 1457141576, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/armorsmith/dwarf_armorsmith_service_good_1_hail_gf_db7232a3.mp3", "Well, that suit is looking a mite worn.  Can I interest you in a new suit of fine armor? ", "ponder", 2174036177, 2566350607, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/armorsmith/dwarf_armorsmith_service_good_1_hail_gf_bb02310.mp3", "Coin is no object when gaining protection from your enemies.  What price can be put on your safety? ", "glare", 3714309888, 79727945, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/armorsmith/dwarf_armorsmith_service_good_1_hail_gf_58a92b79.mp3", "You can never be too careful when it comes to protection.  Here, try on one of these.", "agree", 3153864627, 1838620823, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/armorsmith/dwarf_armorsmith_service_good_1_hail_gf_af50709c.mp3", "I have some nice new suits of chain that have stood up very well.  Would you like to see them?", "shrug", 1362514907, 3649230941, Spawn)
	else
	end

end

