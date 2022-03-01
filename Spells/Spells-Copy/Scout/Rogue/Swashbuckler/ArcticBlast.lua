--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/ArcticBlast.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.16 03:12:34
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- If weapon equipped in Ranged
    local item = GetEquippedItemBySlot(Caster, 16)
    if item then
        if GetItemType(item) == 2 then
            return true
        end
    end

    return false, 68
end

function cast(Caster, Target, DmgType, MinVal, MaxVal, Snare)
    -- Inflicts 57 - 95 cold damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Inflicts 57 - 95 cold damage on target
    if LastSpellAttackHit() then
        if MaxVal ~= nil and MinVal < MaxVal then
            SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
        else
            SpellDamage(Target, DmgType, MinVal)
        end
    end

    -- Applies Snare on termination.  Lasts for 24.0 seconds.
    --     Slows target by 29.9%
    --     5% chance to dispel when target receives hostile action
    --     5% chance to dispel when target takes damage
    if LastSpellAttackHit() then
        SetSpeedMultiplier(Target, (100 - Snare) / 100)
        AddSpellTimer(24000, "RemoveSnare")
    end
end

function RemoveSnare(Caster, Target)
    SetSpeedMultiplier(Target, 1)
end
