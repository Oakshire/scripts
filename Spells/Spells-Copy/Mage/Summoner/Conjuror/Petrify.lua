--[[
    Script Name    : Spells/Mage/Summoner/Conjuror/Petrify.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.12 06:03:32
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 118 - 144 magic damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Stuns target
    --     If Target is not Epic
    if not IsEpic(Target) then
        AddControlEffect(Target, 4)
    end

    -- Resistibility increases against targets higher than level 29.
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end

