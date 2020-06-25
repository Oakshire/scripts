--[[
	Script Name	: SpawnScripts/QeynosHarbor/HeatherAtherton.lua
	Script Purpose	: Heather Atherton <Tailor>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/weaponsmith/human_weaponsmith_service_good_1_hail_gf_37dbcab8.mp3", "Welcome to my humble shop.  We have quite a selection of weapons to choose from.  See for yourself...", "salute", 4255221911, 515435702, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/human_eco_good_1/ft/service/weaponsmith/human_weaponsmith_service_good_1_hail_gf_46ed66f6.mp3", "Never go into battle without a tried and trusted weapon. Take a look at what we have in stock.", "no", 3298861742, 233264155, Spawn)
	else
	end

end

