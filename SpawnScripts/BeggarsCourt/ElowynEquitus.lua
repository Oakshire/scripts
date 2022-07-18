--[[
	Script Name		: SpawnScripts/BeggarsCourt/ElowynEquitus.lua
	Script Purpose	: Elowyn Equitus
	Script Author	: torsten
	Script Date		: 2022.07.18
	Script Notes	: Auto-Generated Conversation from PacketParser Data
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
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seafurybuccaneers/ft/eco/evil/human_eco_evil_seafurybuccaneers_hail_gm_ab3834b1.mp3", "The Dismal Rage is hideous I tell you. I always get the shivers when I pass by them.", "", 2064337459, 2051437235, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seafurybuccaneers/ft/eco/evil/human_eco_evil_seafurybuccaneers_hail_gm_86034332.mp3", "Dealing with the Coalition of Tradesfolke will only burn your plunder and empty your pockets.", "", 3159304235, 3282840818, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seafurybuccaneers/ft/eco/evil/human_eco_evil_seafurybuccaneers_hail_gm_475fe075.mp3", "Arcane Scientists couldn't navigate their way through shallow waters without a map if they tried.", "", 298409119, 3305039750, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_seafurybuccaneers/ft/eco/evil/human_eco_evil_seafurybuccaneers_hail_gm_cf6319e5.mp3", "I don't trust the Freeport Militia. Neither should you, mate.", "", 3920018301, 2026151663, Spawn, 0)
	end
end