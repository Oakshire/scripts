--[[
    Script Name    : Spells/AA/Ambidexterity.lua
    Script Author  : neatz09
    Script Date    : 2020.12.13 01:12:21
    Script Purpose : 
                   : 
--]]

-- Increases Ability Reuse Speed of caster by 1.2%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 662, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end