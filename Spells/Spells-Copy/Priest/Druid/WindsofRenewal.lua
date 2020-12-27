--[[
    Script Name    : Spells/Priest/Druid/WindsofRenewal.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 06:01:41
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Heals group members (AE) for 40 - 49 instantly and every 2 seconds

function cast(Caster, Target, MinVal, MaxVal)
SpellHeal("Heal", MinVal, MaxVal)
end

function tick(Caster, Target, MinVal, MaxVal)
SpellHeal("Heal", MinVal, MaxVal)
end
