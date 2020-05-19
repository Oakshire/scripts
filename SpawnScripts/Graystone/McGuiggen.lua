--[[
	Script Name	: SpawnScripts/Graystone/McGuiggen.lua
	Script Purpose	: McGuiggen <General Goods>
	Script Author	: Scatman
	Script Date	: 2009.09.05
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	local chance = math.random(1, 100)
	if chance <= 25 then
		RandomTalk(NPC, Spawn)
	end
end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	RandomTalk(NPC, Spawn)
end

function RandomTalk(NPC, Spawn)
	local choice = math.random(1, 4)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_good_1/ft/service/merchant/barbarian_merchant_service_good_1_hail_gf_ae84abf9.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 1501437320, 1208713152, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_good_1/ft/service/merchant/barbarian_merchant_service_good_1_hail_gf_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 3015552699, 2771723491, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_good_1/ft/service/merchant/barbarian_merchant_service_good_1_hail_gf_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 2063097698, 2494171847, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/optional2/barbarian_eco_good_1/ft/service/merchant/barbarian_merchant_service_good_1_hail_gf_e4fa2bd8.mp3", "Confound it! Where did I put that ledger? It must be around here somewhere!", "confused", 2483059399, 3985999050, Spawn)
	end
end
