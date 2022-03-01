--[[
	Script Name	: SpawnScripts/FrostfangSea/BerguffFullbeard.lua
	Script Purpose	: Berguff Fullbeard 
	Script Author	: theFoof
	Script Date	: 2013.10.30
	Script Notes	: 
--]]

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "Your most reliable weapon is your knowledge!", "nod", 1689589577, 4560189, Spawn)
end