--[[
	Script Name		:	SpawnScripts/FrostfangSea/SplorpyQuagmarr_(halas).lua
	Script Purpose	:	hides flibbit until quest series is finished
	Script Author	:	theFoof
	Script Date		:	2013.9.24
	Script Notes	:	
--]]

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 100, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
	if HasCompletedQuest(Spawn, 30) then
		AddSpawnAccess(NPC, Spawn)
	end
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "", "", "hello", 0, 0, Spawn)
end