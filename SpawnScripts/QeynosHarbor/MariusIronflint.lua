--[[
	Script Name	: SpawnScripts/QeynosHarbor/MariusIronflint.lua
	Script Purpose	: Marius Ironflint <Ian's Assistant>
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

	PlayFlavor(NPC, "", "Good day to you citizen.  If you've got any of that armor from ol' Ian here, I'd be happy to offer ya some of the newer stuff.", "", 1689589577, 4560189, Spawn)
end

