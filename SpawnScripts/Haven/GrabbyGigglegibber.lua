--[[
	Script Name	: SpawnScripts/Haven/GrabbyGigglegibber.lua
	Script Purpose	: Grabby Gigglegibber <Treat Trader>
	Script Author	: TyroneSWG
	Script Date	: 2019.01.14
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

	PlayFlavor(NPC, "", "If you gets treats off creepy crawly or undead beasties, do let me know!", "nod", 1689589577, 4560189, Spawn)
end

