--[[
	Script Name		: SpawnScripts/LongshadowAlley/NezzkaSTai.lua
	Script Purpose	: Nezzka S`Tai
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
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_dismalrage/ft/eco/evil/darkelf_female_eco_evil_dismalrage_hail_gf_b9254acf.mp3", "The words preached by the Dismal Rage bring spiritual enlightenment to the weak.", "", 116806204, 1893451787, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_dismalrage/ft/eco/evil/darkelf_female_eco_evil_dismalrage_30_gf_350ac522.mp3", "To realize your full potential you must drive all empathy and pity from your heart.", "", 2475957665, 3294345346, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_dismalrage/ft/eco/evil/darkelf_female_eco_evil_dismalrage_hail_gf_f7ca6051.mp3", "I find it vile that our great city has entrusted its protection to a group of degenerates such as the Freeport Militia.", "", 1175835727, 2628271838, Spawn, 0)
	end
end