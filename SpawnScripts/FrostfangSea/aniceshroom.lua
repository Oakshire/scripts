--[[
	Script Name		:	SpawnScripts/FrostfangSea/aniceshroom.lua
	Script Purpose	:	ice shrooms
	Script Author	:	theFoof
	Script Date		:	2013.9.3
	Script Notes	:	
--]]

local KestrelPie = 90

function spawn(NPC)
	SpawnSet(NPC, "action_state", "1494")
	SetRequiredQuest(NPC, KestrelPie, 1, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'an ice shroom' then
		if GetQuestStep(Spawn, KestrelPie) == 1 then
			Despawn(NPC)
			AddStepProgress(Spawn, KestrelPie, 1, 1)
		end
	end
end