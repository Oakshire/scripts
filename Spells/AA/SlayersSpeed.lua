--[[
    Script Name    : Spells/AA/SlayersSpeed.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 04:12:07
    Script Purpose : 
                   : 
--]]

-- Increases Haste of caster by 1.8

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 617, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end