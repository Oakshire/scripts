--[[
	Script Name	: SpawnScripts/Graystone/Rafki.lua
	Script Purpose	: Rafki <Provisioner>
	Script Author	: John Adams/Scatman
	Script Date	: 2008.09.21
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

dofile("SpawnScripts/Generic/EcologyEmotes.lua")

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "RandomTalk")
EcologyEmotes(NPC,Spawn)	
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
		local choice = math.random(1, 4)
		if choice == 1 then
			PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/baker/kerran_baker_service_good_1_hail_gm_3d1ca473.mp3", "Tell me, do you prefer Halfling or Elven cuisine?  I myself have a hard time deciding between the two.", "confused", 2072407004, 4218937544, Spawn)
		elseif choice == 2 then
			PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/baker/kerran_baker_service_good_1_hail_gm_1e9a743c.mp3", "Please mind the plates -- they're very hot.", "scold", 1421995902, 2311727303, Spawn)
		elseif choice == 3 then
			PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/baker/kerran_baker_service_good_1_hail_gm_cca9cdef.mp3", "Welcome, friend, welcome.  I hope you brought your appetite with you!", "wink", 3098407240, 2981751697, Spawn)
		else
			PlayFlavor(NPC, "voiceover/english/kerran_eco_good_1/ft/service/baker/kerran_baker_service_good_1_hail_gm_9db280de.mp3", "I love the smell of fresh bread in the oven!", "sigh", 513708176, 1743421619, Spawn)
		end
	end
end
