--[[
	Script Name	: SpawnScripts/Starcrest/AnevayaStarchaser.lua
	Script Purpose	: Anevaya Starchaser 
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_hail_gf_b52cd580.mp3", "The Qeynos Guard cannot defend us from dark forces it neither sees nor understands.", "", 1941375851, 1104708565, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_hail_gf_88bbd1aa.mp3", "The Tunarian Alliance does not see the greater issues beyond individual evils. Their forests might be scorched wastelands and they would still be fending off poachers.", "", 3133325899, 3316523299, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_hail_gf_987a9a3c.mp3", "While the Celestial Watch futilely awaits word from its forgotten gods the Concordium has harnessed the true power that blazes within each of us.", "", 3806603086, 3205979382, Spawn)
	end
end