--[[
    Script Name    : Spells/Scout/Predator/Ranger/LightningStrike.lua
    Script Author  : John Adams
    Script Date    : 2013.11.20 07:11:53
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 8 - 13 heat damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
