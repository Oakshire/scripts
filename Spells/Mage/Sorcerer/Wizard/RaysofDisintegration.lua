--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/RaysofDisintegration.lua
    Script Author  : neatz09
    Script Date    : 2019.09.23 02:09:08
    Script Purpose : 
                   : 
--]]

-- Inflicts 2744 - 4115 heat damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
