--[[
    Script Name    : SpawnScripts/Baubbleshire/MuginSplitshin.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.26 03:10:27
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 7, "InRange", "LeaveRange")
end

function InRange(NPC, Spawn)
 if math.random(1,100) <15 then
    if GetFactionAmount(Spawn,11) >0 then
	PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/weaponsmith/halfling_weaponsmith_service_good_1_aoi_gm_cc3887ba.mp3", "It's the duty of all citizens to protect the innocent.  Purchase your weapons here for the honor of Qeynos.", "brandish", 259815311, 2474436962, Spawn)
    end
end
end


function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/weaponsmith/gnome_weaponsmith_service_good_1_hail_gm_37dbcab8.mp3", "Welcome to my humble shop.  We have quite a selection of weapons to choose from.  See for yourself...", "salute", 1420367370, 281045768, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/weaponsmith/gnome_weaponsmith_service_good_1_hail_gm_48594671.mp3", "Is there something you need to have custom made?  I can see if I can get one of my lads to look into it!", "smile", 990534064, 1871659860, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/weaponsmith/gnome_weaponsmith_service_good_1_hail_gm_46ed66f6.mp3", "Never go into battle without a tried and trusted weapon. Take a look at what we have in stock.", "brandish", 3060803810, 2289579153, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/gnome_eco_good_1/ft/service/weaponsmith/gnome_weaponsmith_service_good_1_hail_gm_1248b278.mp3", "I just got a shipment in from the Far Sea's Trading Company.  I don't just show anybody this stuff so, shhhh!  ", "wink", 2730095756, 1896311415, Spawn, 0)
	else
	end
end

function respawn(NPC)
	spawn(NPC)
end