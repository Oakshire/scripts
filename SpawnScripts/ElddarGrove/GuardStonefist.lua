--[[
	Script Name	: SpawnScripts/ElddarGrove/GuardStonefist.lua
	Script Purpose	: Guard Stonefist <Guard>
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/guard/dwarf_guard_service_good_1_hail_gm_76da37c9.mp3", "I hate working this shift!  If the gnolls don't attack now I may die of boredom.", "grumble", 31199107, 4082603014, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/guard/dwarf_guard_service_good_1_hail_gm_ee473c11.mp3", "Good day to you citizen, all preserve Queen Antonia.", "salute", 2539353309, 3288832983, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/guard/dwarf_guard_service_good_1_hail_gm_ebfceda5.mp3", "Greetings, citizen. I am on guard duty.  Should you get into trouble, seek me out.", "attention", 1717559969, 1730005307, Spawn)
	else
	end

end

