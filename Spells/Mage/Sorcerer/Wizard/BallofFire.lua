--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/BallofFire.lua
    Script Author  : neatz09
    Script Date    : 2019.05.05 10:05:37
    Script Purpose : 
                   : 
--]]


-- Inflicts 367 - 681 heat damage on target


function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

