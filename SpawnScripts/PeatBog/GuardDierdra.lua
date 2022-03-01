--[[
	Script Name	: SpawnScripts/PeatBog/GuardDierdra.lua
	Script Purpose	: Guard Dierdra <Guard>
	Script Author	: John Adams/Scatman
	Script Date	: 2009.05.10
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	choice = math.random(1, 4)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gf_ed0d92f8.mp3", "I hate the night shift!  If the gnolls don't attack now, I may die of boredom.", "grumble", 1226814424, 706962620, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gf_c865a827.mp3", "Duty above all else, citizen, except honor!", "scold", 373851625, 467562033, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gf_ebfceda5.mp3", "Greetings, citizen. I am on guard duty. Should you get into trouble, seek me out.", "attention", 3448203562, 506341016, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/guard/human_guard_service_good_1_hail_gf_ee473c11.mp3", "Good day to you, citizen. All preserve Queen Antonia.", "salute", 1886617373, 1115286759, Spawn)
	end
end