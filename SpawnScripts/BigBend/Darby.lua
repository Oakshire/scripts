--[[
	Script Name		: SpawnScripts/BigBend/Darby.lua
	Script Purpose	: Darby
	Script Author	: torsten
	Script Date		: 2022.07.13
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
	local choice = MakeRandomInt(1,3)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/service/merchant/troll_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time?  This isn't a museum display you know!", "glare", 2910412337, 3363562860, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/service/merchant/troll_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 3850597068, 627128809, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/troll_eco_evil_1/ft/service/merchant/troll_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 3210835791, 1852025017, Spawn, 0)
	end
end