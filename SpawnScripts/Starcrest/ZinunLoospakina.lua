--[[
	Script Name	: SpawnScripts/Starcrest/ZinunLoospakina.lua
	Script Purpose	: Zinun Loospakina <General Goods>
	Script Author	: John Adams
	Script Date	: 2008.09.23
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 11, "InRange", "LeaveRange")		
end

function InRange(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	PlayFlavor(NPC, "", "", "shakefist", 0, 0, Spawn)
 else   
    chance = MakeRandomInt(0,100)
	if chance <= 30 then
Talk(NPC, Spawn)
end
end
end
    
    
function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
if GetFactionAmount(Spawn,11)<0 then
	PlayFlavor(NPC, "", "", "heckno", 0, 0, Spawn)
else
Talk(NPC, Spawn)
end
end



function Talk(NPC, Spawn)

	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_good_2/ft/service/merchant/erudite_merchant_service_good_2_hail_gm_45d92a75.mp3", "Welcome! What can I help you with?", "bow", 4271285862, 1774320762, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_good_2/ft/service/merchant/erudite_merchant_service_good_2_hail_gm_24322c5d.mp3", "Greetings, friend traveler! We have the finest supplies to fill your adventuring needs.", "smile", 857840270, 941389485, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/erudite_eco_good_2/ft/service/merchant/erudite_merchant_service_good_2_hail_gm_ae84abf9.mp3", "Go on, take a look at the stock.  You'll never beat this price in the city.  I guarantee it!", "wink", 2447200130, 2600666744, Spawn)
	end
end