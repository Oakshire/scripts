--[[
	Script Name	: SpawnScripts/ScaleYard/MerchantZiraak.lua
	Script Purpose	: Merchant Ziraak <Armorsmith>
	Script Author	: John Adams
	Script Date	: 2008.10.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]
function spawn(NPC)
   SetPlayerProximityFunction(NPC, 10, "InRange", "LeavingRange")
end

function InRange(NPC, Player)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/service/merchant/iksar_merchant_service_evil_1_aoi_gm_b9dbd27d.mp3", "Only traitors to the Overlord would pass up a bargain like this. You're not a traitor are you?", "scold", 3019943489, 1406568446, Spawn)
end

function Leaverange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	choice = math.random(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/service/housing/iksar_housing_service_evil_1_hail_gm_38e75dfb.mp3", "We don't sell contraband furnishings in our shop.  We sell only pieces approved by the Overlord!", "salute_freeport", 4143141876, 487272335, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/service/housing/iksar_housing_service_evil_1_hail_gm_b7e3bdf0.mp3", "Welcome friend of the Overlord,  please look around.  We have several pieces from the Citadel itself!      ", "bow", 2808701640, 2743721690, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/iksar_eco_evil_1/ft/service/housing/iksar_housing_service_evil_1_hail_gm_33fe2ae6.mp3", "Don't be ashamed, friend.  We have pieces that even ratongas can afford!", "wink", 1796157639, 1208855084, Spawn)
	end

end