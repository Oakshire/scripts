--[[
	Script Name	: SpawnScripts/ElddarGrove/FayeDawnsinger.lua
	Script Purpose	: Faye Dawnsinger 
	Script Author	: John Adams
	Script Date	: 2008.09.28
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_aeb1a20f.mp3", "It is with honor that I welcome you to our community.", "thanks", 157565536, 4238836509, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_a6a7e923.mp3", "Hail to you, it is indeed a pleasure.", "royalwave", 224557122, 3782103568, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/highelf_eco_good_1/ft/highelf/highelf_eco_good_1_hail_gf_869cb34a.mp3", "Hello, young adventurer. It is with the utmost delight that I greet you.", "fullcurtsey", 1236739692, 2465236460, Spawn)
	else
	end

end

