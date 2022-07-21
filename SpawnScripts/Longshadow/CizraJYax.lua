--[[
	Script Name		: SpawnScripts/LongshadowAlley/CizraJYax.lua
	Script Purpose	: Cizra J`Yax
	Script Author	: torsten
	Script Date		: 2022.07.20
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
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_arcanescientists/ft/eco/evil/darkelf_female_eco_evil_arcanescientists_hail_gf_ec2a8705.mp3", "Mindless brutes that feed on the weak make up the ranks of the Freeport Militia.", "", 3674227482, 1789009112, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_arcanescientists/ft/eco/evil/darkelf_female_eco_evil_arcanescientists_hail_gf_6ad11033.mp3", "When it comes to arcane knowledge, no one knows more about it than Arcane Scientists.", "", 458970350, 57476188, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_arcanescientists/ft/eco/evil/darkelf_female_eco_evil_arcanescientists_hail_gf_dfb5c3b3.mp3", "The Seafuries are just a bunch of ruffians that pirate ships and trade on the black market.", "", 1213807064, 3494632294, Spawn, 0)
	end
end