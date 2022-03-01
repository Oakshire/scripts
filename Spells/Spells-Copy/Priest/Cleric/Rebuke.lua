--[[
    Script Name    : Spells/Priest/Cleric/Rebuke.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 04:01:51
    Script Purpose : 
                   : 
--]]

-- Decreases Mitigation of target vs physical damage by 108
function cast(Caster, Target)
    AddSpellBonus(Target, 200, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
