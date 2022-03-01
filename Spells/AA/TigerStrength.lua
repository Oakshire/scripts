--[[
    Script Name    : Spells/AA/TigerStrength.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 01:12:18
    Script Purpose : 
                   : 
--]]

-- Increases STR and STA of caster by 4.0

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 0, BonusAmt)
    AddSpellBonus(Target, 1, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
