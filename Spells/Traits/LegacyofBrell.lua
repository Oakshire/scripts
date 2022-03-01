--[[
    Script Name    : Spells/LegacyofBrell.lua
    Script Author  : neatz09
    Script Date    : 2020.12.05 02:12:03
    Script Purpose : 
                   : 
--]]

-- Increases Max Power of caster by 1.0%
-- Increases Max Health of caster by 2.0%

function cast(Caster, Target, Pwr, HP)
    AddSpellBonus(Target, 620, Pwr)
    AddSpellBonus(Target, 607, HP)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end