--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/Speechless.lua
    Script Author  : theFoof
    Script Date    : 2014.3.1
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, DmgLow, DmgHigh)
-- Inflicts 130 - 159 mental damage on target
-- Stifles target
-- Epic targets gain an immunity to Stifle effects of 18.0 seconds and duration is reduced to 2.0 seconds.
-- Resistibility increases against targets higher than level 29.
    SpellDamage(Target, DmgType, DmgLow, DmgHigh)
    AddControlEffect(Target, 2)
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 2)
end

