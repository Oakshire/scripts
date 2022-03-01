--[[
    Script Name    : Spells/AA/CraneGrowth.lua
    Script Author  : neatz09
    Script Date    : 2020.12.13 01:12:25
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of caster by 0.5%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 607, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end