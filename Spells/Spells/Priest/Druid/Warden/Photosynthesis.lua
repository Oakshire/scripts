--[[
    Script Name    : Spells/Priest/Druid/Warden/Photosynthesis.lua
    Script Author  : theFoof
    Script Date    : 2013.12.10 11:12:20
    Script Purpose : 
                   : 
--]]

-- Heals target instantly and every 2 seconds

function cast(Caster, Target, HealLow, HealHigh)
    SpellHeal("Heal", HealLow, HealHigh)
end

function tick(Caster, Target, HealLow, HealHigh)
    SpellHeal("Heal", HealLow, HealHigh)
end

function remove()
end
