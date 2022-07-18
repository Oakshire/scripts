--[[
	Script Name		: SpawnScripts/BeggarsCourt/NilniarUrsus.lua
	Script Purpose	: Nilniar Ursus
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
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_arcanescientists/ft/eco/evil/human_male_eco_evil_arcanescientists_hail_gm_52cf3660.mp3", "The Seafuries are just a bunch of mindless sea dwellers.", "", 2052685278, 167982355, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_arcanescientists/ft/eco/evil/human_male_eco_evil_arcanescientists_hail_gm_6727c950.mp3", "The minds at the Academy of Arcane Science are infinite.", "", 137200926, 848953238, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_arcanescientists/ft/eco/evil/human_male_eco_evil_arcanescientists_hail_gm_43509cc2.mp3", "The Freeport Militia is only as competent as their ability to swing a longsword.", "", 1079669242, 1377863119, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_arcanescientists/ft/eco/evil/human_male_eco_evil_arcanescientists_hail_gm_85a84d51.mp3", "The members within the Coalition of Tradefolke are nothing more than common thieves that empty your pockets before your eyes.", "", 1941815786, 1528387739, Spawn, 0)
	end
end