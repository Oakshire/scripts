--[[
    Script Name    : Spells/AA/Poise.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 06:12:33
    Script Purpose : 
                   : 
--]]

-- Increases Ability Casting Speed of caster by 35.0%
function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 664, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end