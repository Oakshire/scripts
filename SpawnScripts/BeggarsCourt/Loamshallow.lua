--[[
	Script Name		: SpawnScripts/BeggarsCourt/Loamshallow.lua
	Script Purpose	: Loamshallow
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
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/alchemist/halfelf_alchemist_service_evil_1_hail_gm_1cabe1c1.mp3", "I need to get some eye of griffon, a bears paw, the heart of an innocent man.  That'll be tough in this city!", "confused", 2535492808, 3183476266, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/alchemist/halfelf_alchemist_service_evil_1_hail_gm_ab298747.mp3", "Let me guess, you're looking for poison, right?", "wink", 2462132552, 3314756088, Spawn, 0)
	end
end