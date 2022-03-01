--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/Assault.lua
    Script Author  : John Adams
    Script Date    : 2013.11.22 07:11:03
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
