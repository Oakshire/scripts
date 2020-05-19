--[[
	Script Name		:	SpawnScripts/FrostfangSea/adamesrocket.lua
	Script Purpose	:	the spawns named "a dame's rocket"
	Script Author	:	theFoof
	Script Date		:	2013.8.27
	Script Notes	:	
--]]

local SpiderPuffs = 87

function spawn(NPC)
	SetRequiredQuest(NPC, SpiderPuffs, 1)
	SpawnSet(NPC, "action_state", "1494")
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 100, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if GetQuestStep(Spawn, SpiderPuffs) == 1 then
		if SpellName == "a dame's rocket" then
			AddStepProgress(Spawn, SpiderPuffs, 1, 1)
			Despawn(NPC)
		end
	end
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, SpiderPuffs) or HasCompletedQuest(Spawn, SpiderPuffs) then
		AddSpawnAccess(NPC, Spawn)
	end
end