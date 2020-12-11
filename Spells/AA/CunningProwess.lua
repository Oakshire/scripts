--[[
    Script Name    : Spells/AA/CunningProwess.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 05:12:53
    Script Purpose : 
                   : 
--]]

-- Increases Potency of caster by 1.3%

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 659, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end