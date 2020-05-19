--[[
    Script Name    : Spells/Scout/Predator/Ranger/RearShot.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.09 08:03:08
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- Must be flanking or behind
    if not IsFlanking(Caster, Target) then
        SendMessage(Caster, "Must be flanking or behind.", "yellow")
        return false
    end

    -- Requires bow
    local item = GetEquippedItemBySlot(Caster, 16)
    if not item or GetItemType(item) ~= 2 then
        -- no item or item is not a ranged item (no way to determine different range items currently)
        return false, 68
    end

    return true
end

function cast(Caster, Target, Snare, MinVal, MaxVal)
    -- Inflicts 22 - 38 ranged damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, 0, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, 0, MinVal)
    end

    -- Applies Snare on termination.  Lasts for 24.0 seconds.
    --     Slows target by 27.4%
    --     5% chance to dispel when target receives hostile action
    --     5% chance to dispel when target takes damage
    local slow = 100.0 - snare
    SetSpeedMultiplier(Target, slow)
    AddSpellTimer(24000, "RemoveSnare")
end

function RemoveSnare(Caster, Target)
    SetSpeedMultiplier(Target, 1)
end
