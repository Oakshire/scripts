--[[
    Script Name    : Spells/Scout/Predator/Assassin/Impale.lua
    Script Author  : Jabantiz
    Script Date    : 2014.04.17 04:04:31
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, DoTType, DoTMinVal, DoTMaxVal)
    -- Inflicts 35 - 58 piercing damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Inflicts 10 - 16 piercing damage on target instantly and every 4 seconds
    if DoTMaxVal ~= nil and DoTMinVal < DoTMaxVal then
        SpellDamage(Target, DoTDmgType, math.random(DoTMinVal, DoTMaxVal))
    else
        SpellDamage(Target, DoTDmgType, DoTMinVal)
    end
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, DoTType, DoTMinVal, DoTMaxVal)
    -- Inflicts 10 - 16 piercing damage on target instantly and every 4 seconds
    if DoTMaxVal ~= nil and DoTMinVal < DoTMaxVal then
        SpellDamage(Target, DoTDmgType, math.random(DoTMinVal, DoTMaxVal))
    else
        SpellDamage(Target, DoTDmgType, DoTMinVal)
    end
end
