--[[
    Script Name    : Spells/Priest/Druid/Fury/FeralPulse.lua
    Script Author  : neatz09
    Script Date    : 2019.10.28 06:10:36
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Heals group members (AE) for 428 - 524
-- Heals group members (AE) for 176 - 216 every 2 seconds
function cast(Caster, Target, MinHeal, MaxHeal, HoTMin, HoTMax)
    SpellHeal("Heal", MinHeal, MaxHeal)
end


function tick(Caster, Target, MinHeal, MaxHeal, HoTMin, HoTMax)
SpellHeal("Heal", HoTMin, HoTMax)
end


