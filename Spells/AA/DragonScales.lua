--[[
    Script Name    : Spells/AA/DragonScales.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 07:12:04
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of caster by 0.8%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 607, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end