--[[
    Script Name    : Spells/Priest/Druid/Warden/NaturesEmbrace.lua
    Script Author  : theFoof
    Script Date    : 2013.12.09 11:12:48
    Script Purpose : 
                   : 
--]]

-- Heals target for X - Y
-- Heals target for A - B every second

function cast(Caster, Target, HealLow, HealHigh, HoTLow, HoTHigh)
    SpellHeal("Heal", HealLow, HealHigh)
end

function tick(Caster, Target, HealLow, HealHigh, HoTLow, HoTHigh)
    SpellHeal("Heal", HoTLow, HoTHigh)
end

function remove()
end
    


