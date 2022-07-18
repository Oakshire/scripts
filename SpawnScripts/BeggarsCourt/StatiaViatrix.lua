--[[
	Script Name		: SpawnScripts/BeggarsCourt/StatiaViatrix.lua
	Script Purpose	: Statia Viatrix
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
	local choice = MakeRandomInt(1,5)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_coalitionoftradesfolke/ft/eco/evil/human_female_eco_evil_coalitionoftradesfolke_hail_gf_bee46698.mp3", "Those Arcane Scientists just spend way too much time studying in their confines. They need to get out more.", "", 1647416091, 3708087662, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_coalitionoftradesfolke/ft/eco/evil/human_female_eco_evil_coalitionoftradesfolke_hail_gf_2b5f7257.mp3", "The Coalition of Tradesfolke sure knows how to make coins fall into their hands.", "", 156316039, 999118411, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_coalitionoftradesfolke/ft/eco/evil/human_female_eco_evil_coalitionoftradesfolke_hail_gf_2747c168.mp3", "The Freeport Militia is a group of hired thugs that are only interested in their own benefits.", "", 1417468938, 1166342004, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_coalitionoftradesfolke/ft/eco/evil/human_female_eco_evil_coalitionoftradesfolke_hail_gf_276a219b.mp3", "The souls of the Dismal Rage priests are so dark that their pale look will make you sick before they can ever heal you.", "", 3986145161, 2347838996, Spawn, 0)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_coalitionoftradesfolke/ft/eco/evil/human_female_eco_evil_coalitionoftradesfolke_hail_gf_15b4266c.mp3", "The Seafury Buccaneers don't seem too bright. They probably lost their ability to think from travelling the seas for too long.", "", 1874743335, 3247477803, Spawn, 0)
	end
end