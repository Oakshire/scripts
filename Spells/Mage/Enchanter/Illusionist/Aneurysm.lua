--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/Aneurysm.lua
    Script Author  : theFoof
    Script Date    : 2014.3.1
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, DmgLow, DmgHigh)
-- Dazes target
-- Inflicts 65 - 79 mental damage on target
-- Epic targets gain an immunity to Daze effects of 13.5 seconds and duration is reduced to 1.5 seconds.
-- Resistibility increases against targets higher than level 29.
    SpellDamage(Target, DmgType, DmgLow, DmgHigh)
    AddControlEffect(Target, 3)
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 3)
end

