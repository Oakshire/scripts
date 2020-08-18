--[[
    Script Name    : Spells/Traditions/StickyWebbing.lua
    Script Author  : neatz09
    Script Date    : 2020.08.18 01:08:01
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Dazes targets in Area of Effect
-- Epic targets gain an immunity to Daze effects of 9.0 seconds and duration is reduced to 1.0 second.
-- Resistibility increases against targets higher than level 29.

function cast(Caster, Target)
    AddControlEffect(Target, 3)

end

function remove(Caster, Target)
    RemoveControlEffect(Target, 3)

end
