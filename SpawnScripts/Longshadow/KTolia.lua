--[[
	Script Name		: SpawnScripts/LongshadowAlley/KTolia.lua
	Script Purpose	: K`Tolia
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
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/alchemist/darkelf_alchemist_service_evil_1_hail_gf_28ab45b2.mp3", "Poison testers, it's been my biggest seller for the past several months.  Of course poison was a close second. ", "ponder", 2704427591, 1913712670, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/alchemist/darkelf_alchemist_service_evil_1_hail_gf_1cabe1c1.mp3", "I need to get some eye of griffon, a bears paw, the heart of an innocent man.  That'll be tough in this city!", "confused", 1057370854, 1424712778, Spawn, 0)
	end
end