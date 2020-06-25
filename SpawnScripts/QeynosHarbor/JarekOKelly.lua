--[[
	Script Name	: SpawnScripts/QeynosHarbor/JarekOKelly.lua
	Script Purpose	: Jarek O'Kelly <Armorsmith>
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

	local choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/weaponsmith/barbarian_weaponsmith_service_good_1_hail_gm_46ed66f6.mp3", "Never go into battle without a tried and trusted weapon. Take a look at what we have in stock.", "no", 2653334387, 1334351078, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/weaponsmith/barbarian_weaponsmith_service_good_1_hail_gm_37dbcab8.mp3", "Welcome to my humble shop.  We have quite a selection of weapons to choose from.  See for yourself...", "salute", 581085624, 1350707041, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/barbarian_eco_good_1/ft/service/weaponsmith/barbarian_weaponsmith_service_good_1_hail_gm_1248b278.mp3", "I just got a shipment in from the Far Sea's Trading Company.  I don't just show anybody this stuff so, shhhh!  ", "wink", 4051219591, 539800994, Spawn)
	else
	end

end

