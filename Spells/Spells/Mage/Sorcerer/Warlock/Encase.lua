--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/Encase.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.07 07:03:41
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 197 - 328 cold damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Stuns target
    --     If Target is not Epic
    -- Resistibility increases against targets higher than level 29.
    if not IsEpic(Target) then
        AddControlEffect(Target, 4)
    end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end
