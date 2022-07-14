--[[
	Script Name		: SpawnScripts/BigBend/Gromk.lua
	Script Purpose	: Gromk
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
		PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_1/ft/service/merchant/ogre_merchant_service_evil_1_hail_gm_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 1831712971, 1100241470, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_1/ft/service/merchant/ogre_merchant_service_evil_1_hail_gm_aff3fc07.mp3", "Are you going to buy anything today or am I just wasting my time?  This isn't a museum display you know!", "glare", 2869440792, 4241979369, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/optional2/ogre_eco_evil_1/ft/service/merchant/ogre_merchant_service_evil_1_hail_gm_6ec08438.mp3", "In spite of the cost of living, it's still quite a popular item.", "ponder", 336682108, 2623574882, Spawn, 0)
	end
end