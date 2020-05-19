--[[
    Script Name    : Spells/Priest/Druid/Warden/WindsofHealing.lua
    Script Author  : theFoof
    Script Date    : 2013.12.11 12:12:53
    Script Purpose : 
                   : 
--]]

-- Heals group members (AE) for 67 - 82
-- Heals group members (AE) for 11 - 14 every second

function cast(Caster, Target, HealLow, HealHigh, HoTLow, HoTHigh)
    SpellHeal("Heal", HealLow, HealHigh)
end

function tick(Caster, Target, HealLow, HealHigh, HoTLow, HoTHigh)
    SpellHeal("Heal", HoTLow, HoTHigh)
end

function remove()
end
