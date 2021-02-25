--[[
    Script Name    : Spells/Scout/Predator/Assassin/MaskedStrike.lua
    Script Author  : Jabantiz
    Script Date    : 2014.04.17 03:04:29
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
-- Must be flanking or behind
    if not IsFlanking(Caster, Target) then
        SendMessage(Caster, "Must be flanking or behind", "yellow")
        return false
    end

    return true
end

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 24 - 41 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

function remove(Caster, Target)
    -- Applies Shroud on termination.  Lasts for 36.0 seconds.
    --     Grants stealth to caster
    --     Suspends caster's movement speed enhancements
    Say(Caster, "Not Implemented: Stealth after attack")
end
