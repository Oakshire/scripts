--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/Brainburst.lua
    Script Author  : theFoof
    Script Date    : 2014.3.1
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DDType, DDLow, DDHigh, dotType, dotLow, dotHigh)
-- Applies Migraine on termination.
-- Inflicts 13 - 17 mental damage on target
-- Inflicts 6 - 7 mental damage on target instantly and every 6 seconds
    --NOTE: Need to allow spells to be irresistible
    SpellDamage(Target, dotType, dotLow, dotHigh)
end

function tick(Caster, Target, DDType, DDLow, DDHigh, dotType, dotLow, dotHigh)
    SpellDamage(Target, DDType, DDLow, DDHigh)
end

function remove(Caster, Target)
end

