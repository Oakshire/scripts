--[[
	Script Name		: SpawnScripts/BigBend/Firda.lua
	Script Purpose	: Firda
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
		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/merchant/ogre_merchant_service_evil_1_hail_gf_7d521aa2.mp3", "Hello! Can I offer you one of our new lifetime extended warranties for any merchandise you purchase?  ", "nod", 2018881162, 4264523804, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/merchant/ogre_merchant_service_evil_1_hail_gf_f715099e.mp3", "Hello there, kind adventurer.  My merchandise carries the seal of the Overlord himself!  Go ahead, take a look!", "salute_freeport", 1555538408, 3566039549, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/ogre_eco_evil_1/ft/service/merchant/ogre_merchant_service_evil_1_hail_gf_d088c20d.mp3", "The stuff's over there.  Just let me know if you find anything you like.", "ponder", 2706816468, 1822386477, Spawn, 0)
	end
end