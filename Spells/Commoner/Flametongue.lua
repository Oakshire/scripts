--[[
    Script Name    : Spells/Commoner/Flametongue.lua
    Script Author  : neatz09
    Script Date    : 2020.09.26 04:09:42
    Script Purpose : 
                   : 
--]]

-- On a combat hit this spell may cast Flametongue on target of attack.  Lasts for 3.0 seconds.  Triggers about 5.0 times per minute. 
--     Inflicts 3 - 4 heat damage on target instantly and every second

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end


function tick(Caster, Target, DmgType, MinVal, MaxVal)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end