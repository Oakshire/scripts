--[[
    Script Name    : Spells/Commoner/VenomousRunes.lua
    Script Author  : neatz09
    Script Date    : 2020.09.26 12:09:03
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal)
-- On a combat hit this spell may cast Venomous Runes on target of attack.  Lasts for 16.0 seconds.  Triggers about 2.0 times per minute. 
--     Inflicts 17 - 21 poison damage on target instantly and every 4 seconds
SpellDamage(Target, DmgType, MinVal, MaxVal)
end


function tick(Caster, Target, DmgType, MinVal, MaxVal)
SpellDamage(Target, DmgType, MinVal, MaxVal)
end
