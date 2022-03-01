--[[
    Script Name    : Spells/AA/Conditioning.lua
    Script Author  : neatz09
    Script Date    : 2020.12.15 05:12:42
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of caster by 1.5%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 606, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end