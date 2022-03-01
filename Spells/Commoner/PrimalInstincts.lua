--[[
    Script Name    : Spells/Commoner/PrimalInstincts.lua
    Script Author  : neatz09
    Script Date    : 2020.09.26 01:09:03
    Script Purpose : 
                   : 
--]]

-- On a hostile ability cast this spell may cast Primal Instincts on target of spell.  Lasts for 6.0 seconds.  Triggers about 7.0 times per minute. 
--     Inflicts 90 - 109 piercing damage on target
--     Inflicts 45 - 55 piercing damage on target every 3 seconds

function cast(Caster, Target, DmgType, MinVal, MaxVal, TickType, TickMin, TickMax)
    SpellDamage(Target, DmgType, MinVal, MaxVal)

end


function tick(Caster, Target, DmgType, MinVal, MaxVal, TickType, TickMin, TickMax)
    SpellDamage(Target, TickType, TickMin, TickMax)
end
