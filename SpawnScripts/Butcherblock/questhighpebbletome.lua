--[[
    Script Name    : SpawnScripts/Butcherblock/questhighpebbletome.lua
    Script Author  : jakejp
    Script Date    : 2018.06.02 09:06:56
    Script Purpose : 
                   : 
--]]

local NauticalDisaster = 252

function spawn(NPC)
    SetRequiredQuest(NPC, NauticalDisaster, 1)
end

function casted_on(Target, Caster, SpellName)
    if SpellName == "Take the tome" then
            if GetQuestStep(Caster, NauticalDisaster) == 1 then
	        SetStepComplete(Caster, NauticalDisaster, 1)
	    end
    end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)
    spawn(NPC)
end

