--[[
	Script Name	: SpawnScripts/FrostfangSea/anicelily.lua
	Script Purpose	: for the spawn "an ice lily"
	Script Author	: theFoof
	Script Date	: 2013.05.21
	Script Notes	: 
--]]

local FieldTesting = 23

function spawn(NPC)
    AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
	SpawnSet(NPC, "action_state", "1494")
end

function respawn(NPC)
    spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
    if GetQuestStep(Spawn, FieldTesting) == 1 then
	    AddSpawnAccess(NPC, Spawn)
	else
	    RemoveSpawnAccess(NPC, Spawn)
	end
end

function casted_on(NPC, Caster, SpellName)
    if SpellName == 'collect an ice lily' then
	    if GetQuestStep(Caster, FieldTesting) == 1 then
		    AddStepProgress(Caster, FieldTesting, 1, 1)
			Despawn(NPC)
		end
	end
end