--[[
	Script Name	: SpawnScripts/Longshadow/TeahJNar.lua
	Script Purpose	: Teah J'Nar 
	Script Author	: John Adams
	Script Date	: 2008.09.29
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	MoveToLocation(NPC, -1.79, 0, -19.09, 2, "AtDestination")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function AtDestination(NPC)
	PlayFlavor(NPC, "", "Hmm, this bread tastes a bit better than normal, almost fresh.", "", 1689589577, 4560189, Spawn)
	Bread = GetSpawn(NPC, 1380102)
	Despawn(Bread, 1000)
	AddTimer(NPC, 3000, "Talk2")
end

function Talk2(NPC)
	PlayFlavor(NPC, "", "Wait.. Argh....", "", 1689589577, 4560189, Spawn)
	AddTimer(NPC, 2000, "KillTeah")
end

function KillTeah(NPC)
	KillSpawn(NPC, nil, 0)
end