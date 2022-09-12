--[[
    Script Name    : Spells/Mage/LightningShock.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 04:01:55
    Script Purpose : 
                   : 
--]]

-- Inflicts 20 - 27 magic damage on target
function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
