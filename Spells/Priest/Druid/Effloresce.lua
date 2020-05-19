--[[
    Script Name    : Spells/Priest/Druid/Effloresce.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 07:01:39
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Heals target for 102 - 125
-- Heals target for 13 - 16 every second

function cast(Caster, Target, MinVal, MaxVal, HoTMin, HoTMax)
SpellHeal("Heal", MinVal, MaxVal)
end

function tick(Caster, Target, MinVal, MaxVal, HoTMin, HoTMax)
SpellHeal("Heal", HoTMin, HoTMax)
end
