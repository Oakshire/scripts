--[[
    Script Name    : Spells/Priest/Druid/Warden/SylvanBloom.lua
    Script Author  : theFoof
    Script Date    : 2013.12.09 11:12:13
    Script Purpose : 
                   : 
--]]

-- Heals target
-- Heals target every second

function cast(Caster, Target, HealLow, HealHigh, HoTLow, HoTHigh)
    SpellHeal("Heal", HealLow, HealHigh)
end

function tick(Caster, Target, HealLow, HealHigh, HoTLow, HoTHigh)
    SpellHeal("Heal", HoTLow, HoTHigh)
end

function remove()
end

