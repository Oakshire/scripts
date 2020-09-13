--[[
    Script Name    : Spells/Traditions/SideSwipe.lua
    Script Author  : neatz09
    Script Date    : 2020.08.18 01:08:19
    Script Purpose : 
                   : 
--]]

-- Inflicts 1 - 2 crushing damage on target
-- Stuns target
-- Epic targets gain an immunity to Stun effects of 5.6 seconds and duration is reduced to 0.6 seconds.
-- Resistibility increases against targets higher than level 29.

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    AddControlEffect(Target, 4)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end


function remove(Caster, Target)
    RemoveControlEffect(Target, 4)

end