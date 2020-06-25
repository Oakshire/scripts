--[[
	Script Name	: SpawnScripts/Longshadow/PThek.lua
	Script Purpose	: P`Thek <Spell Scrolls>
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/scribe/darkelf_scribe_service_evil_1_hail_gf_8de85b9c.mp3", "Perhaps I could interest you in our necromantic line of spells?  ", "agree", 3172095768, 4205908579, Spawn)
end