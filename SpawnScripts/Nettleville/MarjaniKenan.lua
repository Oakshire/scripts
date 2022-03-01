--[[
	Script Name	: SpawnScripts/Nettleville/MarjaniKenan.lua
	Script Purpose	: Marjani Kenan 
	Script Author	: Scatman
	Script Date	: 2009.08.12
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	local chance = math.random(0, 100)
	if chance <= 25 then
		Talk(NPC, Spawn)
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	Talk(NPC, Spawn)
end

function Talk(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 5)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_good_2/ft/kerran/kerran_eco_good_2_hail_gf_63881722.mp3", "I'm trying to find a new seasoning for my dried fish.", "ponder", 3322224010, 1564701262, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_good_2/ft/kerran/kerran_eco_good_2_hail_gf_eabd8556.mp3", "I heard the Ratonga play it for fun.", "shrug", 1138200584, 1711242450, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_good_2/ft/kerran/kerran_eco_good_2_hail_gf_4424ae28.mp3", "How sweet my Tom is to leave such a gift at my door step. ", "thanks", 2235953436, 2446050201, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_good_2/ft/kerran/kerran_eco_good_2_hail_gf_b155e999.mp3", "You won't see me near any of those fountains.", "no", 1123179326, 271243686, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/optional2/kerran_eco_good_2/ft/kerran/kerran_eco_good_2_hail_gf_28445ab7.mp3", "I don't spend as much time grooming as the others say I do.", "sulk", 1571714850, 824504933, Spawn)
	end
end