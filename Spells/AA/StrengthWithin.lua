--[[
    Script Name    : Spells/AA/StrengthWithin.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 03:12:13
    Script Purpose : 
                   : 
--]]

-- Increases STR of caster by 2.0

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 0, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end