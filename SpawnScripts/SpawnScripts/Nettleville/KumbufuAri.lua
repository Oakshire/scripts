--[[
	Script Name	: SpawnScripts/Nettleville/KumbufuAri.lua
	Script Purpose	: Kumbufu Ari <Weaponsmith>
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
	local choice = math.random(0, 100)
	if choice <= 25 then
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
	local choice = math.random(1, 6)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/weaponsmith/kerran_weaponsmith_service_good_1_hail_gm_1248b278.mp3", "I just got a shipment in from the Far Sea's Trading Company.  I don't just show anybody this stuff so, shhhh!  ", "wink", 3547253110, 2896491555, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/weaponsmith/kerran_weaponsmith_service_good_1_hail_gm_48594671.mp3", "Is there something you need to have custom made?  I can see if I can get one of my lads to look into it!", "ponder", 4263084610, 4279030372, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/weaponsmith/kerran_weaponsmith_service_good_1_hail_gm_37dbcab8.mp3", "Welcome to my humble shop.  We have quite a selection of weapons to choose from.  See for yourself...", "salute", 2923552658, 290527830, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/weaponsmith/kerran_weaponsmith_service_good_1_aoi_gm_cc3887ba.mp3", "It's the duty of all citizens to protect the innocent.  Purchase your weapons here for the honor of Qeynos.", "scold", 1978098526, 3344178102, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/weaponsmith/kerran_weaponsmith_service_good_1_hail_gm_46ed66f6.mp3", "Never go into battle without a tried and trusted weapon. Take a look at what we have in stock.", "no", 3072112550, 2391899341, Spawn)
	elseif choice == 6 then
		PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/weaponsmith/kerran_weaponsmith_service_good_1_aoi_gm_cc3887ba.mp3", "It's the duty of all citizens to protect the innocent. Purchase your weapons here for the honor of Qeynos.", "scold", 1978098526, 3344178102, Spawn)
	end
end
