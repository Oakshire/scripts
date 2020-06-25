--[[
	Script Name		:	SpawnScripts/FrostfangSea/sign_coldain_house03.lua
	Script Purpose	:	hides the quarmarr house sign until questline is done
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