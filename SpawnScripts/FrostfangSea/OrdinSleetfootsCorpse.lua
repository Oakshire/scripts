--[[
	Script Name		:	SpawnScripts/FrostfangSea/OrdinSleetfootsCorpse.lua
	Script Purpose	:	for the spawn "Ordin Sleetfoot's Corpse"
	Script Author	:	theFoof
	Script Date		:	2013.6.13
	Script Notes	:	
--]]

local SleetfootParty = 62

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, SleetfootParty) then
		AddSpawnAccess(NPC, Spawn)
	end
end