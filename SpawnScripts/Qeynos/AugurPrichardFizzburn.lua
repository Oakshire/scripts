--[[
	Script Name	: SpawnScripts/SouthQeynos/AugurPrichardFizzburn.lua
	Script Purpose	: Augur Prichard Fizzburn <Concordium Mage>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
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

	PlayFlavor(NPC, "", "I'm afraid I cannot speak now, friend.  Please feel free to avail yourself of our knowledge.  Right now, the city requires my concentration.", "", 1689589577, 4560189, Spawn)
end

