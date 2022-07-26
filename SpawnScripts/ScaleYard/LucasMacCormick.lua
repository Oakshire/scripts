--[[
	Script Name		: SpawnScripts/ScaleYard/LucasMacCormick.lua
	Script Purpose	: Lucas MacCormick
	Script Author	: torsten
	Script Date		: 2022.07.25
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
		PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_drunk/ft/eco/good/dwarf_eco_good_drunk_bartender_gm_e4fde966.mp3", "I haven't that much to drink yet, I got here when... Bah, I forgot!", "no", 2849412615, 1365635923, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_drunk/ft/eco/good/dwarf_eco_good_drunk_bartender_gm_2b255210.mp3", "Quit your whinin', I paid ye with my jokes and my fine company.", "boggle", 4105685491, 3313510809, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_drunk/ft/eco/good/dwarf_eco_good_drunk_barmaid_gm_7f76ecc6.mp3", "Hurry up! My stomach's near dry thanks to ya.", "frustrated", 2932007848, 277469364, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_drunk/ft/eco/good/dwarf_eco_good_drunk_barmaid_gm_a1d96f41.mp3", "My stein hasn't any legs to walk over and fill itself up.", "glare", 188839482, 4266338416, Spawn, 0)
	end
end