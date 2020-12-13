--[[
    Script Name    : Spells/AA/EaglesFury.lua
    Script Author  : neatz09
    Script Date    : 2020.12.13 01:12:35
    Script Purpose : 
                   : 
--]]

-- Increases Crit Chance of caster by 1.8

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 654, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end