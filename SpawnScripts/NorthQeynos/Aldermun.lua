--[[
	Script Name		: SpawnScripts/NorthQeynos/Aldermun.lua
	Script Purpose	: Aldermun
	Script Author	: Dorbin
	Script Date		: 2022.04.23
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
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gf_ebfceda5.mp3", "Greetings, citizen. I am on guard duty.  Should you get into trouble, seek me out.", "attention", 3448203562, 506341016, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gf_c865a827.mp3", "Duty above all else, citizen, except honor!", "scold", 373851625, 467562033, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gf_ee473c11.mp3", "Good day to you, citizen. All preserve Queen Antonia.", "salute", 1886617373, 1115286759, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gf_ed0d92f8.mp3", "I hate the night shift!  If the gnolls don't attack now, I may die of boredom.", "grumble", 1226814424, 706962620, Spawn, 0)
	end
end