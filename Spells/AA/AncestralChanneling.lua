--[[
    Script Name    : Spells/AA/AncestralChanneling.lua
    Script Author  : neatz09
    Script Date    : 2020.12.11 06:12:14
    Script Purpose : 
                   : 
--]]

-- Heals group members (AE) for 3240 - 3960
-- Heals group members (AE) for 1620 - 1980 every second

function cast(Caster, Target, HealMin, HealMax, HoTMin, HoTMax)
SpellHeal("Heal", HealMin, HealMax)
end

function tick(Caster, Target, HealMin, HealMax, HoTMin, HoTMax)
SpellHeal("Heal", HoTMin, HoTMax)
end
