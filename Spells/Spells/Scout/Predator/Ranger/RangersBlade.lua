--[[
    Script Name    : Spells/Scout/Predator/Ranger/RangersBlade.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.10 06:03:48
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- You must be sneaking to use this ability.
    if not IsStealthed(Caster) then
        SendMessage(Caster, "You must be sneaking to use this ability.", "yellow")
        return false
    end

    -- Must be flanking or behind
    if not IsFlanking(Caster, Target) and not IsBehind(Caster, Target) then
        SendMessage(Caster, "Must be flanking or behind", "yellow")
        return false
    end

    return true
end

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 153 - 256 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
