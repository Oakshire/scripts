--[[
	Script Name	: SpawnScripts/QeynosHarbor/adrunksailor.lua
	Script Purpose	: a drunk sailor 
	Script Author	: Cynnar
	Script Date	: 2020.04.12
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

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)

	local choice = math.random(1,6)

	if choice == 1 then
		PlayFlavor(NPC, "", "Captain Gullham and his men left port for the Outpost of the Overlord several moons ago. Neither he, nor his ship, the Callisto Prince, has been seen since!", "no", 1689589577, 4560189, Spawn)
	elseif choice == 2 then
		PlayFlavor(NPC, "", "It's been a long time since we've seen any refugees from the Outpost of the Overlord. Have they all been rescued?", "confused", 1689589577, 4560189, Spawn)
	elseif choice == 3 then
		PlayFlavor(NPC, "", "I'm beginning to miss those young adventurers running about town, solving everyone's problems. Good work is hard to find!", "shame", 1689589577, 4560189, Spawn)
	elseif choice == 4 then
		PlayFlavor(NPC, "", "I've heard word of a massive flotilla of ships blocking access to some of the established trade routes! Who do they think they are?! Do the Far Seas Traders have the audacity to think they own the seas?", "shakefist", 1689589577, 4560189, Spawn)
	elseif choice == 5 then
		PlayFlavor(NPC, "", "I don't know what to tell you, mate. If the Traders haven't found your brother by now, I'm afraid he's probably gone to the Hold of Prexus.", "sigh", 1689589577, 4560189, Spawn)
	elseif choice == 6 then
		PlayFlavor(NPC, "", "I've heard the Far Seas Trading Company no longer honors the Pact of Tserrin.", "agree", 1689589577, 4560189, Spawn)
	else
	end

end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 926.33, -25.56, 64.28, 2, 0)
	MovementLoopAddLocation(NPC, 916.7, -25.49, 54.32, 2, 0)
	MovementLoopAddLocation(NPC, 906.84, -25.25, 48.73, 2, 0)
	MovementLoopAddLocation(NPC, 911.84, -25.49, 32.88, 2, 0)
	MovementLoopAddLocation(NPC, 922.02, -25.49, 22.11, 2, 0)
	MovementLoopAddLocation(NPC, 931.07, -25.4, 15.12, 2, 0)
	MovementLoopAddLocation(NPC, 933.57, -25.42, 14.33, 2, 0)
	MovementLoopAddLocation(NPC, 938.88, -25.55, 11.42, 2, 0)
	MovementLoopAddLocation(NPC, 927.9, -25.43, 16.95, 2, 0)
	MovementLoopAddLocation(NPC, 931.45, -25.58, 31.72, 2, 0)
	MovementLoopAddLocation(NPC, 923.78, -25.49, 51.49, 2, 0)
	MovementLoopAddLocation(NPC, 910.29, -25.33, 88.01, 2, 0)
	MovementLoopAddLocation(NPC, 928.5, -25.27, 97.46, 2, 0)
	MovementLoopAddLocation(NPC, 932.35, -25.27, 92.05, 2, 0)
	MovementLoopAddLocation(NPC, 924.95, -25.27, 88.74, 2, 120)
	MovementLoopAddLocation(NPC, 932.35, -25.27, 92.05, 2, 0)
	MovementLoopAddLocation(NPC, 928.5, -25.27, 97.46, 2, 0)
	MovementLoopAddLocation(NPC, 910.29, -25.33, 88.01, 2, 0)
	MovementLoopAddLocation(NPC, 923.78, -25.49, 51.49, 2, 0)
	MovementLoopAddLocation(NPC, 931.45, -25.58, 31.72, 2, 0)
	MovementLoopAddLocation(NPC, 927.9, -25.43, 16.95, 2, 0)
	MovementLoopAddLocation(NPC, 938.88, -25.55, 11.42, 2, 0)
	MovementLoopAddLocation(NPC, 933.57, -25.42, 14.33, 2, 0)
	MovementLoopAddLocation(NPC, 931.07, -25.4, 15.12, 2, 0)
	MovementLoopAddLocation(NPC, 922.02, -25.49, 22.11, 2, 0)
	MovementLoopAddLocation(NPC, 911.84, -25.49, 32.88, 2, 0)
	MovementLoopAddLocation(NPC, 906.84, -25.25, 48.73, 2, 0)
	MovementLoopAddLocation(NPC, 916.7, -25.49, 54.32, 2, 0)
	MovementLoopAddLocation(NPC, 926.33, -25.56, 64.28, 2, 0)
end