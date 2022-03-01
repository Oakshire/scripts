--[[
	Script Name	: SpawnScripts/Graystone/Frerin.lua
	Script Purpose	: Frerin <Guard>
	Script Author	: John Adams/Scatman
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_f593b7f4.mp3", "I prefer the dark, freshly dug tunnels underground, but I guess this city will do.", "shrug", 2336463438, 545977097, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_18f9b118.mp3", "Oh! You snuck up on me. Good to see you.", "doubletake", 2049370386, 4131204607, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/dwarf/dwarf_eco_good_1_hail_gm_4a5e53d4.mp3", "Sure, sometimes it seems like I'm sober, but trust me, I'm not.", "wink", 2723897486, 2019496108, Spawn)
	end
end