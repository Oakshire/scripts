--[[
	Script Name	: SpawnScripts/Graystone/Kaya.lua
	Script Purpose	: Kaya <Bowyer>
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1, 4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_good_2/ft/service/weaponsmith/barbarian_weaponsmith_service_good_2_hail_gf_48594671.mp3", "Is there something you need to have custom made?  I can see if I can get one of my lads to look into it!", "ponder", 638401660, 3171727066, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_good_2/ft/service/weaponsmith/barbarian_weaponsmith_service_good_2_hail_gf_37dbcab8.mp3", "Welcome to my humble shop.  We have quite a selection of weapons to choose from.  See for yourself...", "salute", 939993914, 1218448248, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_good_2/ft/service/weaponsmith/barbarian_weaponsmith_service_good_2_hail_gf_46ed66f6.mp3", "Never can you go into battle without a tried and trusted weapon. Here, take a look at what we have in stock.", "no", 2566058453, 1526004977, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_good_2/ft/service/weaponsmith/barbarian_weaponsmith_service_good_2_hail_gf_1248b278.mp3", "I just got a shipment in from the Far Seas Trading Company.  I don't just show anybody this stuff so, shhhh!  ", "wink", 3922800728, 536638644, Spawn)
	end
end