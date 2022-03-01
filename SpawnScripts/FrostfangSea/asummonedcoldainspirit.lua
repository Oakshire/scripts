--[[
	Script Name		:	SpawnScripts/FrostfangSea/asummonedcoldainspirit.lua
	Script Purpose	:	for the spawn "a summoned coldain spirit"
	Script Author	:	theFoof
	Script Date		:	2013.6.6
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

function killed(NPC, Spawn)
	PlayAnimation(NPC, 10893)
    PlayAnimation(Spawn, 18414)
	local choice = math.random(1,6)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_aggro_gm_23b35126.mp3", "Where do ya think you're going?", "", 706272128, 909565004, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_aggro_gm_9de55a3e.mp3", "There they are! Let's get em!", "", 3246206943, 366784514, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_aggro_gm_ab9057d3.mp3", "Looking for me? ", "", 438949611, 3910736957, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_victory_gm_4a1ceaef.mp3", "Ha! I'm not done yet. Get back up!", "", 458619926, 239663782, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_victory_gm_d6c773c7.mp3", "I didn't think I hit em that hard.", "", 3680771732, 663911723, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/dwarf_base_1/ft/dwarf/dwarf_base_1_1_victory_gm_d6c773c7.mp3", "I didn't think I hit em that hard.", "", 3680771732, 663911723, Spawn)
	end
end