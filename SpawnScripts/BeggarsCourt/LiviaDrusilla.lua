--[[
	Script Name		: SpawnScripts/BeggarsCourt/LiviaDrusilla.lua
	Script Purpose	: Livia Drusilla
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
	local choice = MakeRandomInt(1,6)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_216216bd.mp3", "The next time that guy leers at me, I'm gonna punch him in the throat.", "threaten", 3620511003, 1079805953, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_ed2258.mp3", "If you keep bothering me, I'll scream for help!!", "scream", 3517182304, 1940512214, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_e0c9d202.mp3", "I'd give anything to leave this godsforsaken cesspool of a city.", "beg", 167506951, 845500735, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_e1648d49.mp3", "What made you think I wanted to talk to you?", "shrug", 739774986, 813162418, Spawn, 0)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_b0f7eb94.mp3", "Unless you know of a way to make some quick coin, we have no reason to talk.", "scold", 3652661564, 2025834564, Spawn, 0)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/human_eco_evil_1/ft/human/human_eco_evil_1_hail_gf_d2844e25.mp3", "You can avoid trouble around here as long as you don't make eye contact with anyone.", "lookaway", 2224595311, 1879007102, Spawn, 0)
	end
end