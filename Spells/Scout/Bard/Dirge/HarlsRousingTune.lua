--[[
    Script Name    : Spells/Scout/Bard/Dirge/HarlsRousingTune.lua
    Script Author  : theFoof
    Script Date    : 2013.08.11 09:08:41
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, StatAmount, AvoidanceAmt)
    AddSpellBonus(Caster, 0, StatAmount)
    AddSpellBonus(Caster, 2, StatAmount)
    AddSpellBonus(Caster, 696, AvoidanceAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
end
