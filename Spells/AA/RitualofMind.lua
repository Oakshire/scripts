--[[
    Script Name    : Spells/AA/RitualofMind.lua
    Script Author  : neatz09
    Script Date    : 2020.12.11 06:12:14
    Script Purpose : 
                   : 
--]]

-- Increases Ability Reuse Speed of caster by 0.8%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 662, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end