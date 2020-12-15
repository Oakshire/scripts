--[[
    Script Name    : Spells/AA/BladedExpertise.lua
    Script Author  : neatz09
    Script Date    : 2020.12.15 05:12:06
    Script Purpose : 
                   : 
--]]

-- Increases Damage Per Second of caster by 4.0

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 629, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end