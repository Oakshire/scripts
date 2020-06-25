--[[
	Script Name		:	SpawnScripts/FrostfangSea/veliumshard.lua
	Script Purpose	:	for the spawn "velium shard"
	Script Author	:	theFoof
	Script Date		:	2013.5.31
	Script Notes	:	
--]]

local NoWork = 41

function spawn(NPC)
    AddSpawnAccess(NPC, NPC)
    SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
    if SpellName == 'collect the shard' then
       AddStepProgress(Spawn, NoWork, 1, 1)
       Despawn(NPC) 
    end
end

function SpawnAccess(NPC, Spawn)
    if GetQuestStep(Spawn, NoWork) == 1 then
        AddSpawnAccess(NPC, Spawn)
    else
        RemoveSpawnAccess(NPC, Spawn)
    end
end