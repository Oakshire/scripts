--[[
	Script Name		:	SpawnScripts/FrostfangSea/arustypiton.lua
	Script Purpose	:	for the spawn "a rusty piton"
	Script Author	:	theFoof
	Script Date		:	2013.6.4
	Script Notes	:	
--]]

local LooseningGrip = 51

function spawn(NPC)
	SetRequiredQuest(NPC, LooseningGrip, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'cut the line' then
		if GetQuestStep(Spawn, LooseningGrip) == 1 then
			AddStepProgress(Spawn, LooseningGrip, 1, 1)
			Despawn(NPC)
		end
	end
end