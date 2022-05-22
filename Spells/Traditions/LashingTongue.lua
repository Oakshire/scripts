--[[
    Script Name    : Spells/Traditions/LashingTongue.lua
    Script Author  : neatz09
    Script Date    : 2022.05.21 05:05:40
    Script Purpose : 
                   : 
--]]


--[[ *Inflicts 7 - 9 crushing damage on target
*Stuns target
*Epic targets gain an immunity to Stun effects of 3.7 seconds and duration is reduced to 0.4 seconds.
*Resistibility increases against targets higher than level 29.

--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
end