--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/AncientWrath.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.06 08:12:08
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Stuns targets in Area of Effect
    --     If Target is not Epic
    if not IsEpic(Target) then
        AddControlEffect(Target, 4)
    end

    -- Inflicts 66 - 110 divine damage on targets in Area of Effect
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Resistibility increases against targets higher than level 29.

end

function remove(Caster, Target)
    RemoveControlEffect(Target, 4)
end
