--[[
	Script Name	: SpawnScripts/Graystone/Oakfist.lua
	Script Purpose	: Oakfist <Combat Arts>
	Script Author	: John Adams/Scatman
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "RandomTalk", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	RandomTalk(NPC, Spawn, false)
end

function RandomTalk(NPC, Spawn, Option)
	local choice = 0
	if Option == nil then
		choice = math.random(1, 100)
	end
	
	if choice < 25 then
		FaceTarget(NPC, Spawn)
		local choice = math.random(1, 4)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/merchant/dwarf_merchant_service_good_1_hail_gm_e4fa2bd8.mp3", "Confound it! Where did I put that ledger?  It must be around here somewhere!", "confused", 2160906698, 176729787, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/merchant/dwarf_merchant_service_good_1_hail_gm_ae84abf9.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 2230797709, 3854601007, Spawn)
		elseif choice == 3 then
			PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/merchant/dwarf_merchant_service_good_1_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies, right before ya, to fill your adventuring needs.", "smile", 2986424867, 2267649224, Spawn)
		else
			PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/merchant/dwarf_merchant_service_good_1_hail_gm_45d92a75.mp3", "Welcome! What is it I can help you with?", "bow", 3654607078, 2614139251, Spawn)
		end
	end
end

function LeaveRange(NPC, Spawn)
end