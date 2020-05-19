--[[
	Script Name	: SpawnScripts/Sprawl/Sasha.lua
	Script Purpose	: Sasha <Alchemist>
	Script Author	: Scatman
	Script Date	: 2009.07.26
	Script Notes	: 
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	local chance = math.random(1, 100)
	if chance <= 25 then
		PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_evil_3/ft/service/merchant/ratonga_merchant_service_evil_3_aoi_gf_53388b91.mp3", "Only traitors to the Overlord would pass up a bargain like this.  You're not a traitor are you?", "scold", 2288309507, 1188267472, Spawn)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local choice = math.random(1, 2)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_evil_3/ft/service/merchant/ratonga_merchant_service_evil_3_hail_gf_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 3460692084, 694864112, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/ratonga_eco_evil_3/ft/service/merchant/ratonga_merchant_service_evil_3_hail_gf_d088c20d.mp3", "The stuff's over there.  Just let me know if you find anything you like.", "ponder", 3740786388, 4176254637, Spawn)
	end
end
