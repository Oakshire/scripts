--[[
    Script Name    : Spells/AA/BreathingTechniques.lua
    Script Author  : neatz09
    Script Date    : 2020.12.15 05:12:47
    Script Purpose : 
                   : 
--]]

-- Increases Ability Recovery Speed of caster by 3.5%
function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 663, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end