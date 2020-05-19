--[[
	Script Name		:	SpawnScripts/Nektropos1/InquisitorofUllkorruuk.lua
	Script Purpose	:	Inquisitor of Ullkorruuk
	Script Author	:	smash
	Script Date		:	1/28/2016
	Script Notes	:	
--]]

function spawn(NPC)
    AddTimer(NPC, 3000, "DelayedSpawnChat")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function death(NPC)
	SpawnByLocationID(GetZone(NPC), 1584473)
end

function DelayedSpawnChat(NPC)
    Say(NPC, "Defilers, I shall purge your taint from this holy place.")
end