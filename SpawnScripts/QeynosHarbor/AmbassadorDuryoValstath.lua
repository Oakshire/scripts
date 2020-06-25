--[[
	Script Name	: SpawnScripts/QeynosHarbor/AmbassadorDuryoValstath.lua
	Script Purpose	: Ambassador Duryo Valstath <Change of Citizenship>
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

	PlayFlavor(NPC, "", "Greetings, traveler!  If you are interested in becoming a citizen of Qeynos, speak to the Ambassador in your home city to arrange the paperwork, then return to me.", "", 1689589577, 4560189, Spawn)
end

