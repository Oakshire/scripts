--[[
    Script Name    : Spells/Scout/Predator/Ranger/SearingShot.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.10 04:03:03
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- Requires bow
    local item = GetEquippedItemBySlot(Caster, 16)
    if not item or GetItemType(item) ~= 2 then
        -- no item or item is not a ranged item (no way to determine different range items currently)
        return false, 68
    end

    return true
end

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 9 - 15 heat damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Inflicts 9 - 15 heat damage on target
    if LastSpellAttackHit() then
        if MaxVal ~= nil and MinVal < MaxVal then
            SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
        else
            SpellDamage(Target, DmgType, MinVal)
        end
    end
end
