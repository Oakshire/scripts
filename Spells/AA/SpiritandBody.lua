--[[
    Script Name    : Spells/SpiritandBody.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 01:12:45
    Script Purpose : 
                   : 
--]]

-- Increases Max Power of caster by 0.5%
-- Increases Max Health of caster by 0.5%

function cast(Caster, Target, Pwr, HP)
    AddSpellBonus(Target, 620, Pwr)
    AddSpellBonus(Target, 607, HP)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end