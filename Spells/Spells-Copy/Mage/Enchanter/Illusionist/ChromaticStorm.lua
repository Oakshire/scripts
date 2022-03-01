--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/ChromaticStorm.lua
    Script Author  : theFoof
    Script Date    : 2014.3.1
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, DmgLow, DmgHigh)
-- Inflicts X - Y mental damage on target encounter instantly and every 2 seconds
-- Applies Stumble on termination.
-- Interrupts target
-- Interrupts target encounter

    SpellDamage(Target, DmgType, DmgLow, DmgHigh)
    Interrupt(Caster)
end

function tick(Caster, Target)
    SpellDamage(Target, DmgType, DmgLow, DmgHigh)
end

function remove(Caster, Target)
    Interrupt(Caster)
end

