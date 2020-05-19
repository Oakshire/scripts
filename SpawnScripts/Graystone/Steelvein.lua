--[[
	Script Name	: SpawnScripts/Graystone/Steelvein.lua
	Script Purpose	: Steelvein <Shieldsmith>
	Script Author	: John Adams
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	
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
		local choice = math.random(1, 3)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/merchant/dwarf_merchant_service_good_1_hail_gf_45d92a75.mp3", "Welcome! What is it I can help you with?", "bow", 578929529, 647853, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/merchant/dwarf_merchant_service_good_1_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 2476632966, 344262300, Spawn)
		else
			PlayFlavor(NPC, "voiceover/english/dwarf_eco_good_1/ft/service/merchant/dwarf_merchant_service_good_1_hail_gf_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 2158784304, 1517987989, Spawn)
		end
	end
end
