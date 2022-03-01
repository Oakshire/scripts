--[[
    Script Name    : Spells/AA/IdolicAxe.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 02:12:33
    Script Purpose : 
                   : 
--]]

-- Increases Hate Gain of caster by 1.0%
function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 624, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end