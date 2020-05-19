--[[
    Script Name    : Spells/Tradeskills/ProgressModSuccessAdd.lua
    Script Author  : John Adams
    Script Date    : 2013.11.23 01:11:52
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Reduces the amount of experimental progress gained by 1.0%.
-- Increases experimental success chance by 2.0%
-- Cannot be modified except by direct means

function cast(Caster, Target, ProgressMod, SuccessAdd)
    AddSpellBonus(Caster, 803, ProgressMod)
    AddSpellBonus(Caster, 804, SuccessAdd)
end

function remove(Caster, Target, ProgressMod, SuccessAdd)
    RemoveSpellBonus(Target)
end