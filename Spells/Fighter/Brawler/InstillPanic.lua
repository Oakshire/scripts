--[[
    Script Name    : Spells/Fighter/Brawler/InstillPanic.lua
    Script Author  : neatz09
    Script Date    : 2020.08.29 02:08:49
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Makes target afraid
-- 30% chance to dispel when target takes damage
-- Does not affect Epic targets
-- Resistibility increases against targets higher than level 29.

function cast(Caster, Target)
    AddControlEffect(Target, 6)

end


function remove(Caster, Target)
    RemoveControlEffect(Target, 6)

end
