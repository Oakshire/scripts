--[[
	Script Name		: SpawnScripts/SouthFreeport/Exmarch.lua
	Script Purpose	: Exmarch
	Script Author	: Dorbin
	Script Date		: 2022.05.04
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomGreeting(NPC, Spawn)
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,2)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_farsea_1/ft/service/merchant/halfelf_merchant_service_farsea_1_hail_gm_b9b19d1d.mp3", "Lets me knows if'n ye sight a shark with a timber stuck a'tween his teeth.", "wink", 802487084, 1336291105, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_farsea_1/ft/service/merchant/halfelf_merchant_service_farsea_1_hail_gm_bd794e47.mp3", "Ye starin' at me glass eye, ye poxy tar?", "stare", 3483682855, 570647172, Spawn, 0)
	end
end