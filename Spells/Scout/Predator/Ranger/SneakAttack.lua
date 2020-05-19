--[[
    Script Name    : Spells/Scout/Predator/Ranger/SneakAttack.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.10 07:03:05
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- Must be flanking or behind
    if not IsFlanking(Caster, Target) or not IsBehind(Caster, Target) then
        SendMessage(Caster, "Must be flanking or behind", "yellow")
        return false
    end

    return true
end

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 27 - 45 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Applies Shroud on termination.  Lasts for 36.0 seconds.
    --     Grants stealth to caster
    --     Suspends caster's movement speed enhancements

    -- Stelath component will probably need to be a new spell cast from here
    Say(Caster, "Not implemented yet: Put caster in stealth")
end
