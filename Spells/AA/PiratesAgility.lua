--[[
    Script Name    : Spells/AA/PiratesAgility.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 01:12:08
    Script Purpose : 
                   : 
--]]

-- Increases AGI and STA of caster by 4.0

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 1, BonusAmt)
    AddSpellBonus(Target, 2, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
