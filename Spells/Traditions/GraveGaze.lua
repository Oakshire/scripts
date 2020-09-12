--[[
    Script Name    : Spells/Traditions/GraveGaze.lua
    Script Author  : neatz09
    Script Date    : 2020.08.18 01:08:30
    Script Purpose : 
                   : 
--]]

-- Stuns target
-- Epic targets gain an immunity to Stun effects of 7.5 seconds and duration is reduced to 0.8 seconds.
-- Resistibility increases against targets higher than level 29.

function cast(Caster, Target)
    AddControlEffect(Target, 4)

end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)

end
