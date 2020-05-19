--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/MedusaGaze.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.14 05:03:17
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 13 - 16 mental damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Stuns target
    AddControlEffect(Target, 4)

    -- Epic targets gain an immunity to Stun effects of 16.5 seconds and duration is reduced to 1.8 seconds.
    -- Resistibility increases against targets higher than level 29.
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end
