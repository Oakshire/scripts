--[[
	Script Name		: SpawnScripts/SouthFreeport/DiometriaOppius.lua
	Script Purpose	: Diometria Oppius
	Script Author	: Dorbin
	Script Date		: 2022.05.04
	Script Notes	: Needs lvl flag for 40 response.
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
	local choice = MakeRandomInt(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seafurybuccaneers/ft/eco/evil/human_eco_evil_seafurybuccaneers_hail_gf_cf6319e5.mp3", "I don't trust the Freeport Militia. Neither should you, mate.", "", 841757214, 1711434021, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seafurybuccaneers/ft/eco/evil/human_eco_evil_seafurybuccaneers_hail_gf_a6172442.mp3", "You might as well hand your loot to the Coalition of Tradesfolke if you ever decide to work for them.", "", 3500427050, 3119081965, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seafurybuccaneers/ft/eco/evil/human_eco_evil_seafurybuccaneers_hail_gf_1606a6dc.mp3", "It's weak to rely on magic for everything. If ye have the same weakness, the Academy of Arcane Sciences is for you.", "", 582247664, 3802790481, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seafurybuccaneers/ft/eco/evil/human_eco_evil_seafurybuccaneers_40_gf_844f23c4.mp3", "You're no longer just a Seafury Buccaneer with us, matey. If port space weren't such a problem, we'd let you captain your own ship.", "", 2955148126, 830655827, Spawn, 0)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seafurybuccaneers/ft/eco/evil/human_eco_evil_seafurybuccaneers_hail_gf_b1479083.mp3", "The Seafury Buccaneers are feared by all others on the open sea. They show no mercy to the dogs that try to sail the sea unprotected.", "", 1087502675, 64319081, Spawn, 0)
	end
end