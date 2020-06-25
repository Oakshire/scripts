--[[
	Script Name	: SpawnScripts/QeynosHarbor/HarbormasterCrestbreak.lua
	Script Purpose	: Harbormaster Crestbreak 
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

	local choice = math.random(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional5/halfelf_eco_good_2/ft/service/merchant/halfelf_merchant_service_good_2_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 2816660604, 3830827049, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional5/halfelf_eco_good_2/ft/service/merchant/halfelf_merchant_service_good_2_hail_gf_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 1394131243, 1936863827, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional5/halfelf_eco_good_2/ft/service/merchant/halfelf_merchant_service_good_2_hail_gf_e4fa2bd8.mp3", "Confound it! Where did I put that ledger?  It must be around here somewhere!", "confused", 1252836690, 4210583240, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/optional5/halfelf_eco_good_2/ft/service/merchant/halfelf_merchant_service_good_2_hail_gf_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 972343456, 3393961158, Spawn)
	else
	end

end

