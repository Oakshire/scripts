--[[
	Script Name		:	SpawnScripts/FrostfangSea/SplorpyQuagmarr_(shelf).lua
	Script Purpose	:	for the spawn "Splorpy Quagmarr" located in the great shelf cave.
	Script Author	:	theFoof
	Script Date		:	2013.5.30
	Script Notes	:	
--]]
local GreatShelf = 30

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	PlayFlavor(NPC, "", "Hello again!", "wave", 1689589577, 4560189, Spawn)
end

function SpawnAccess(NPC, Spawn)
	if HasCompletedQuest(Spawn, GreatShelf) then
		AddSpawnAccess(NPC, Spawn)
	end
end