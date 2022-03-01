--[[
    Script Name    : Spells/AA/EnhancedMind.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 03:12:08
    Script Purpose : 
                   : 
--]]

-- Increases Max Power of caster by 0.5%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 620, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end