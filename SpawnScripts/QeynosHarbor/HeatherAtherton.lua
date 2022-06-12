--[[
	Script Name	: SpawnScripts/QeynosHarbor/HeatherAtherton.lua
	Script Purpose	: Heather Atherton <Tailor>
	Script Author	: Dorbin
	Script Date	: 2022.06.11
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
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/armorsmith/human_armorsmith_service_good_1_hail_gf_bb02310.mp3", "Coin is no object when gaining protection from your enemies.  What price can be put on your safety? ", "glare", 93047397, 3216144520, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/armorsmith/human_armorsmith_service_good_1_hail_gf_58a92b79.mp3", "You can never be too careful when it comes to protection.  Here, try on one of these.", "agree", 3342234015, 3894819487, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/armorsmith/human_armorsmith_service_good_1_hail_gf_af50709c.mp3", "I have some nice new suits of chain that have stood up very well.  Would you like to see them?", "shrug", 1001561402, 2745612534, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/armorsmith/human_armorsmith_service_good_1_hail_gf_db7232a3.mp3", "Well, that suit is looking a mite worn.  Can I interest you in a new suit of fine armor? ", "ponder", 2349039589, 2731635835, Spawn, 0)
	end

end

