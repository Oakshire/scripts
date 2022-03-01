--[[
    Script Name    : Spells/AA/HeartyConstitution.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 03:12:03
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of caster by 0.5%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 606, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end