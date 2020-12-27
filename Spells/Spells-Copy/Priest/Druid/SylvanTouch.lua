--[[
    Script Name    : Spells/Priest/Druid/SylvanTouch.lua
    Script Author  : theFoof
    Script Date    : 2013.12.16
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, HealLow, HealHigh, HoTLow, HoTHigh)
-- Heals target for 119 - 146
-- Heals target for 52 - 64 every 2 seconds

    SpellHeal("Heal", HealLow, HealHigh)
end

function tick(Caster, Target, HealLow, HealHigh, HoTLow, HoTHigh)
    SpellHeal("Heal", HoTLow, HoTHigh)
end

function remove(Caster, Target)
end

