--[[
    Script Name    : Spells/Scout/Predator/Ranger/ImmobilizingLunge.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.10 06:03:49
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 58 - 97 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Roots target
    --     If Target is not Epic
    if not IsEpic(Target) then
        SetSpeedMultiplier(Target, 0)
    end
end

function remove(Caster, Target)
    SetSpeedMultiplier(Target, 1)
end
