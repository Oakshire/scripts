--[[
	Script Name		: SpawnScripts/BigBend/Talanakiat.lua
	Script Purpose	: Talanakiat
	Script Author	: torsten
	Script Date		: 2022.07.10
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
	local choice = MakeRandomInt(1,9)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_46facad7.mp3", "If I eats you now, I wouldn't know what you were going to say.", "wink", 191047961, 2382342743, Spawn, 15)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/troll/ft/troll/troll_eco_garble_garbled_gm_318f674b.mp3", "Erch bosta pankan toost", "glare", 2846330309, 4155347396, Spawn, 15)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/troll/ft/troll/troll_eco_garble_garbled_gm_aa2c46fe.mp3", "Hach ekko zet flas", "stare", 1977926860, 997450426, Spawn, 15)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_f28915a9.mp3", "Friends are good until you don't need them anymore.", "glare", 2727950602, 4200124273, Spawn, 15)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/optional2/troll/ft/troll/troll_eco_garble_garbled_gm_a1a1512f.mp3", "Tastke blatsa zurtek nyt", "scheme", 3824904925, 121650296, Spawn, 15)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/optional2/troll/ft/troll/troll_eco_garble_garbled_gm_c4c81df1.mp3", "Pazzkkan gracht glizt kep", "brandish", 1821063853, 3495000701, Spawn, 15)
	elseif choice == 7 then
		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_d5eb6fc.mp3", "OWW!!  Head hurts when I do that thing with my brain!  OW!!", "confused", 1058602010, 3235323095, Spawn, 15)
	elseif choice == 8 then
		PlayFlavor(NPC, "voiceover/english/optional2/troll/ft/troll/troll_eco_garble_garbled_gm_43bed989.mp3", "Habat zopft hach'te glarst", "whome", 2701453259, 3347954170, Spawn, 15)
	elseif choice == 9 then
		PlayFlavor(NPC, "voiceover/english/optional2/troll_eco_evil_2/ft/troll/troll_eco_evil_2_hail_gm_5afa1e7.mp3", "The Overlord needs to let trolls eat more people.  He won't miss them.", "pout", 2782977705, 136776719, Spawn, 15)
	end
end