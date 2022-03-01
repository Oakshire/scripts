--[[
    Script Name    : Spells/AA/Bombardment.lua
    Script Author  : neatz09
    Script Date    : 2020.12.15 05:12:41
    Script Purpose : 
                   : 
--]]

-- Caster has a 1.0% chance of having one of their weapons' auto-attack strike the target multiple times.

function cast(Caster, Target, BonusAmt)
    AddSpellBonus(Target, 647, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end