--[[
	Script Name		:	SpawnScripts/FrostfangSea/pie.lua
	Script Purpose	:	a pie
	Script Author	:	theFoof
	Script Date		:	2013.9.3
	Script Notes	:	
--]]

local KestrelPie = 90

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'pick up a kestrel pot pie' then
		if GetQuestStep(Spawn, KestrelPie) == 4 then
			RemoveSpawnAccess(NPC, Spawn)
			SetStepComplete(Spawn, KestrelPie, 4)
		end
	end
end

function SpawnAccess(NPC, Spawn)
	if GetQuestStep(Spawn, KestrelPie) == 4 then
		AddSpawnAccess(NPC, Spawn)
	end
end