--[[
	Script Name	: SpawnScripts/Longshadow/KTolia.lua
	Script Purpose	: K`Tolia <Alchemist>
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/alchemist/darkelf_alchemist_service_evil_1_hail_gf_28ab45b2.mp3", "Poison testers, it's been my biggest seller for the past several months.  Of course poison was a close second. ", "ponder", 2704427591, 1913712670, Spawn)
end