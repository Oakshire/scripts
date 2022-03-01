--[[
    Script Name    : Spells/AA/Chronology.lua
    Script Author  : neatz09
    Script Date    : 2020.12.11 06:12:46
    Script Purpose : 
                   : 
--]]

-- Increases Ability Casting Speed of caster by 1.4%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 664, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end