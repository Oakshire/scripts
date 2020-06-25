--[[
	Script Name		:	SpawnScripts/FrostfangSea/a_necromancer_totem.lua
	Script Purpose	:	the necromancer totem in frostfang
	Script Author	:	theFoof
	Script Date		:	2013.8.11
	Script Notes	:	
--]]

local SometimesKnut = 84

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 100, "SpawnAccess", "SpawnAccess")
	SpawnSet(NPC, "action_state", "2623")
end

function respawn(NPC)
	spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
	if GetQuestStep(Spawn, SometimesKnut) == 3 then
		AddSpawnAccess(NPC, Spawn)
	end
end