--[[
	Script Name	: SpawnScripts/Longshadow/LDor.lua
	Script Purpose	: L`Dor <Armorsmith>
	Script Author	: John Adams
	Script Date	: 2009.04.11
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
		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 1302153135, 3653961458, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 2781916825, 678640011, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/darkelf_eco_evil_1/ft/service/merchant/darkelf_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time? This isn't a museum display you know!", "glare", 898812878, 1402234103, Spawn)
	end
end