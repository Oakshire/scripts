--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/EgoShock.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.14 06:03:01
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 65 - 79 mental damage on target encounter
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Dazes target encounter
    AddControlEffect(Target, 3)

    -- Epic targets gain an immunity to Daze effects of 12.0 seconds and duration is reduced to 1.3 seconds.
    -- Resistibility increases against targets higher than level 29.
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 3)
end
