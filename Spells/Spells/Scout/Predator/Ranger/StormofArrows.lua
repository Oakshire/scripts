--[[
    Script Name    : Spells/Scout/Predator/Ranger/StormofArrows.lua
    Script Author  : neatz09
    Script Date    : 2019.10.06 11:10:50
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

-- Inflicts 602 - 1003 ranged damage on target encounter

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
