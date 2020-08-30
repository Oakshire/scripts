--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/BarrierofIntellect.lua
    Script Author  : neatz09
    Script Date    : 2020.05.09 06:05:09
    Script Purpose : 
                   : 
--]]


-- Decreases Threat to targets in Area of Effect by 1,850 
-- Mesmerizes targets in Area of Effect
--     If Target is not Epic
-- Dispelled when target takes damage
-- Resistibility increases against targets higher than level 29.

function cast(Caster, Target, Hate)
    AddHate(Caster, Target, Hate, 1)
    AddControlEffect(Target, 1)
    Say(Caster, "level resistability not implemented. nor if target is not epic.")
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 1) 
end