--[[
	Script Name		:	SpawnScripts/IllbodingDark1/blackshard.lua
	Script Purpose	:	for the black shard spawns in zone 516 and 517
	Script Author	:	theFoof
	Script Date		:	2013.6.19
	Script Notes	:	
--]]

local SeveringHead = 72

function spawn(NPC)
	SpawnSet(NPC, "action_state", "2623")
	SetRequiredQuest(GetSpawnByLocationID(GetZone(NPC), 465212), SeveringHead, 2)
	SetRequiredQuest(GetSpawnByLocationID(GetZone(NPC), 465211), SeveringHead)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == "Smash the stone!" then
		if GetQuestStep(Spawn, SeveringHead) == 2 then
			SetStepComplete(Spawn, SeveringHead, 2)
			SpawnSet(GetSpawnByLocationID(GetZone(NPC), 465211), "visual_state", "0")
			SpawnSet(NPC, "visual_state", "18193")
			AddTimer(NPC, 500, "Despawn")
		end
	end
end