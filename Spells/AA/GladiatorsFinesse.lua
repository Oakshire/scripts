--[[
    Script Name    : Spells/AA/GladiatorsFinesse.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 02:12:52
    Script Purpose : 
                   : 
--]]

-- Increases DPS of caster by 2.5

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 629, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end