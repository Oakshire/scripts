--[[
	Script Name		:	SpawnScripts/FrostfangSea/qst_veliumdelver_barrel.lua
	Script Purpose	:	for the qst_veliumdelver_barrel spawns
	Script Author	:   theFoof
	Script Date		:	2013.6.11
	Script Notes	:	
--]]

local RyGorrOperations = 60

function spawn(NPC)
	SetRequiredQuest(NPC, RyGorrOperations, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == "gather " then
		if GetQuestStep(Spawn, RyGorrOperations) == 1 then
			if not HasItem(Spawn, 47881) then
				SummonItem(Spawn, 47881)
				Despawn(NPC)
			end
		end
	end
end