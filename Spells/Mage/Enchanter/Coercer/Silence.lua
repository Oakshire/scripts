--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/Silence.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.14 08:03:01
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, DoTType, DoTMinVal, DoTMaxVal)
    -- Inflicts 71 - 87 mental damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Stifles target
    AddControlEffect(Target, 2)

    -- Epic targets gain an immunity to Stifle effects of 18.0 seconds and duration is reduced to 2.0 seconds.
    -- Resistibility increases against targets higher than level 29.
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, DoTType, DoTMinVal, DoTMaxVal)
    -- Inflicts 24 - 29 mental damage on target every second
    if DoTMaxVal ~= nil and DoTMinVal < DoTMaxVal then
        SpellDamage(Target, DoTType, math.random(DoTMinVal, DoTMaxVal))
    else
        SpellDamage(Target, DoTType, DoTMinVal)
    end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 2)
end
