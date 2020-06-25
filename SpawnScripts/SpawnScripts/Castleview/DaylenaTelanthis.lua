--[[
	Script Name	: SpawnScripts/Castleview/DaylenaTelanthis.lua
	Script Purpose	: Daylena Telanthis 
	Script Author	: Scatman
	Script Date	: 2009.10.03
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	if math.random(0, 100) <= 25 then
		Talk(NPC, Spawn)
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Talk(NPC, Spawn)
end

function Talk(NPC, Spawn)
	local choice = math.random(1, 5)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_hail_gf_15aa4eed.mp3", "Those who have neither the abilities nor the aspirations to pursue the intellectual arts will find a home at the Ironforge Exchange.", "", 523104392, 3732258776, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_hail_gf_4121a9b2.mp3", "The Concordium uses ancient and forgotten knowledge to protect us from the shadows that surround Qeynos.", "", 1945306751, 352506246, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_hail_gf_88bbd1aa.mp3", "The Tunarian Alliance does not see the greater issues beyond individual evils. Their forests might be scorched wastelands and they would still be fending off poachers.", "", 3133325899, 3316523299, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_hail_gf_987a9a3c.mp3", "While the Celestial Watch futilely awaits word from its forgotten gods the Concordium has harnessed the true power that blazes within each of us.", "", 3806603086, 3205979382, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_concordium/ft/eco/good/highelf_eco_good_concordium_hail_gf_b52cd580.mp3", "The Qeynos Guard cannot defend us from dark forces it neither sees nor understands.", "", 1941375851, 1104708565, Spawn)
	end
end
