--[[
    Script Name    : Spells/AA/RelentlessPunches.lua
    Script Author  : neatz09
    Script Date    : 2020.12.13 01:12:31
    Script Purpose : 
                   : 
--]]

-- Increases DPS of caster by 2.1

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 629, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end