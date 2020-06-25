--[[
    Script Name    : SpawnScripts/Nektropos1/ArchfiendIzzoroth.lua
    Script Author  : smash
    Script Date    : 2016.09.09 03:09:44
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetSpeedMultiplier(NPC, 0)
	AddTimer(NPC, 6000, "MakeAttackable")
end

function DemonTalk(NPC)
	local choice = math.random(1,2)

	--Check for understood language, or that should be handled in code?
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional3/nightblood_base_2/ft/nightblood/nightblood_base_2_1_garbled_26ecf0b.mp3", "Keb'ma   moktar   vekshet   pa", "", 203325556, 752859570, nil, 24)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional3/nightblood_base_2/ft/nightblood/nightblood_base_2_1_garbled_5d4f1d0d.mp3", "Velfar sek'tem molorad su'vehrem", "", 1706934970, 2177477527, nil, 24)
	end
end

function MakeAttackable(NPC)
	DemonTalk(NPC)
	SpawnSet(NPC, "attackable", "1")
	SpawnSet(NPC, "show_level", "1")
end