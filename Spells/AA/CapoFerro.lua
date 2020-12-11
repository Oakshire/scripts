--[[
    Script Name    : Spells/AA/CapoFerro.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 05:12:28
    Script Purpose : 
                   : 
--]]

-- Increases Ability Reuse Speed of caster by 1.3%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 662, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end