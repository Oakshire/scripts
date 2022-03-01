--[[
	Script Name	: SpawnScripts/TheBaubbleshire/BarmaidEstellaMuddyfoot.lua
	Script Purpose	: Barmaid Estella Muddyfoot <Provisioner>
	Script Author	: Dorbin
	Script Date	: 2022.01.08
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
		waypoints(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
end

function LeaveRange(NPC, Spawn)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 882.68, -18.31, -445.37, 1, math.random(8, 15))
	MovementLoopAddLocation(NPC, 881.69, -18.31, -444.24, 1, 0)
	MovementLoopAddLocation(NPC, 880.83, -18.31, -442.82, 1, 0)
	MovementLoopAddLocation(NPC, 881.84, -18.31, -441.04, 1, 0)
	MovementLoopAddLocation(NPC, 881.4, -18.31, -439.63, 1, 0)
	MovementLoopAddLocation(NPC, 880.29, -18.31, -439.28, 1, 0)
	MovementLoopAddLocation(NPC, 879.01, -18.31, -439.34, 1, math.random(8, 15))
	MovementLoopAddLocation(NPC, 880.51, -18.31, -438.76, 2, 0)
	MovementLoopAddLocation(NPC, 881.23, -18.31, -437.99, 1, math.random(8, 15))
	MovementLoopAddLocation(NPC, 881.44, -18.31, -439.47, 1, 0)
	MovementLoopAddLocation(NPC, 881.79, -18.31, -441.09, 1, 0)
	MovementLoopAddLocation(NPC, 883.93, -18.31, -441.43, 1, 0)
	MovementLoopAddLocation(NPC, 886.1, -18.31, -441.78, 1, 0)
	MovementLoopAddLocation(NPC, 887.61, -18.31, -441.62, 1, math.random(8, 15))
	MovementLoopAddLocation(NPC, 886.42, -18.31, -442.78, 1, 0)
	MovementLoopAddLocation(NPC, 883.58, -18.31, -445.54, 1, 0)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,3)

	--if choice ==  then (This is for Freeport/Evil aligned)
		--PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/baker/halfling_baker_service_good_1_notcitizen_gf_77caad95.mp3", "How dare you enter our city!  I won't sell goods to perpetuate the tyranny of Freeport!", "frustrated", 3167737425, 870327311, Spawn)
    if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/baker/halfling_baker_service_good_1_hail_gf_9db280de.mp3", "I love the smell of fresh bread in the oven!", "sigh", 1048257184, 2248522628, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/baker/halfling_baker_service_good_1_hail_gf_cca9cdef.mp3", "Welcome friend, welcome.  I hope you brought your appetite with you!", "wink", 22116398, 594684199, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/halfling_eco_good_1/ft/service/baker/halfling_baker_service_good_1_hail_gf_3d1ca473.mp3", "Tell me, do you prefer Halfling or Elven cuisine?  I myself have a hard time deciding between the two.", "confused", 1646021457, 4149179615, Spawn)
	else
	end

end

