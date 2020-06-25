--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/RefusalofAtonement.lua
    Script Author  : neatz09
    Script Date    : 2019.09.27 10:09:54
    Script Purpose : 
                   : 
--]]

-- Inflicts 786 - 1310 divine damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

