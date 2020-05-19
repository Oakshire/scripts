--[[
	Script Name		:	FrostfangSea/SpawnScripts/avigilantgauntletdefender_(archer).lua
	Script Purpose	:	for the archer gauntlet defenders
	Script Author	:	theFoof
	Script Date		:	2013.6.2
	Script Notes	:	
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function killed(NPC)
	local choice = math.random(1,5)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_aggro_gf_be4f625e.mp3", "Where do ya think you're going?", "", 152508601, 1517122703)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_aggro_gf_ab9057d3.mp3", "Looking for me?  ", "", 407706048, 337475746)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_victory_gf_4a1ceaef.mp3", "Ha! I'm not done yet. Get back up!", "", 1335528281, 2889456217)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_victory_gf_d6c773c7.mp3", "I didn't think I hit em that hard.", "", 4016088326, 632010394)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_victory_gf_ecd7fa6e.mp3", "An ale for the fallen!", "", 3223559996, 2677275600)
	end
end