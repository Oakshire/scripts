--[[
	Script Name		:	SpawnScripts/FrostfangSea/frostbiteregg.lua
	Script Purpose	:   for the frostbiter eggs in frostfang (unnamed spawn)
	Script Author	:	theFoof
	Script Date		:	2013.6.1
	Script Notes	:	
--]]

local DomesticationSurvivalism = 43

function spawn(NPC)
    SetRequiredQuest(NPC, DomesticationSurvivalism, 1)
    AddSpawnAccess(NPC, NPC)
    SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
    if SpellName == 'Gathering' then
        if GetQuestStep(Spawn, DomesticationSurvivalism) == 1 then
            AddStepProgress(Spawn, DomesticationSurvivalism, 1, 1)
            Despawn(NPC)
        end
    end
end

function SpawnAccess(NPC, Spawn)
    if HasCompletedQuest(Spawn, DomesticationSurvivalism) or GetQuestStep(Spawn, DomesticationSurvivalism) == 1 then
        AddSpawnAccess(NPC, Spawn)
    end
end