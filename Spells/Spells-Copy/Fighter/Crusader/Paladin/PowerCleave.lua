--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/PowerCleave.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.06 08:12:53
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 44 - 73 divine damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
