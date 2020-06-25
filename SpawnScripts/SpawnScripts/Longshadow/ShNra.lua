--[[
	Script Name	: SpawnScripts/Longshadow/ShNra.lua
	Script Purpose	: Sh`Nra <Shieldsmith>
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	SaySomethingRandom(NPC, Spawn)
end

function InRange(NPC, Spawn)
	SaySomethingRandom(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function SaySomethingRandom(NPC, Spawn)
	choice = math.random(1, 3)
	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_hail_gf_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 3860282907, 2830883681, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_hail_gf_d088c20d.mp3", "The stuff's over there. Just let me know if you find anything you like.", "ponder", 1457896156, 727813168, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_hail_gf_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 1486780566, 1792397389, Spawn)
	end
end