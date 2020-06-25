--[[
	Script Name	: SpawnScripts/ElddarGrove/Knight-CaptainPercius.lua
	Script Purpose	: Knight-Captain Percius <Guard>
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/service/guard/highelf_guard_service_good_1_hail_gm_76da37c9.mp3", "I hate working this shift!  If the gnolls don't attack now, I may die of boredom.", "grumble", 3586563752, 1865874525, Spawn)
end

