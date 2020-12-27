--[[
    Script Name    : Spells/Priest/Druid/Warden/Healstorm.lua
    Script Author  : theFoof
    Script Date    : 2013.12.11 12:12:37
    Script Purpose : 
                   : 
--]]
-- Heals group members (AE) instantly and every 2 seconds

function cast(Caster, Target, HealLow, HealHigh)
    SpellHeal("Heal", HealLow, HealHigh)
end

function tick(Caster, Target, HealLow, HealHigh)
    SpellHeal("Heal", HealLow, HealHigh)
end

function remove()
end
