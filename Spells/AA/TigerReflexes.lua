--[[
    Script Name    : Spells/AA/TigerReflexes.lua
    Script Author  : neatz09
    Script Date    : 2020.12.13 01:12:33
    Script Purpose : 
                   : 
--]]

-- Caster has a 0.8% chance of having one of their weapons' auto-attack strike the target multiple times.
function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 647, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end