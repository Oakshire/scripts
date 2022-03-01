--[[
    Script Name    : Spells/Scout/Predator/Assassin/ImprovisedWeapon.lua
    Script Author  : neatz09
    Script Date    : 2019.09.23 03:09:23
    Script Purpose : 
                   : 
--]]

-- Inflicts 217 - 361 piercing damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

