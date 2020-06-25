--[[
	Script Name	: SpawnScripts/QeynosHarbor/ThomasBodley.lua
	Script Purpose	: Thomas Bodley <General Goods>
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

	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_1/ft/service/armorsmith/human_armorsmith_service_good_1_hail_gm_bb02310.mp3", "Coin is no object when gaining protection from your enemies.  What price can be put on your safety? ", "glare", 4001145540, 1700499989, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_1/ft/service/armorsmith/human_armorsmith_service_good_1_hail_gm_af50709c.mp3", "I have some nice new suits of chain that have stood up very well.  Would you like to see them?", "shrug", 1083420797, 1187364205, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_1/ft/service/armorsmith/human_armorsmith_service_good_1_hail_gm_58a92b79.mp3", "You can never be too careful when it comes to protection.  Here, try on one of these.", "agree", 1065665881, 1563994341, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional2/human_eco_good_1/ft/service/armorsmith/human_armorsmith_service_good_1_hail_gm_db7232a3.mp3", "Well, that suit is looking a mite worn.  Can I interest you in a new suit of fine armor? ", "ponder", 3836224141, 450395477, Spawn)
	else
	end

end

