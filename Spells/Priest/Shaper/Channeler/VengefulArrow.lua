--[[
    Script Name    : Spells/Priest/Shaper/Channeler/VengefulArrow.lua
    Script Author  : John Adams
    Script Date    : 2013.11.21 09:11:31
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- Requires bow
    return true
end

function cast(Caster, Target, MinVal, MaxVal)
    -- Inflicts 7 - 12 ranged damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
