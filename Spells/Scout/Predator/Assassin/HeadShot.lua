--[[
    Script Name    : Spells/Scout/Predator/Assassin/HeadShot.lua
    Script Author  : neatz09
    Script Date    : 2019.09.23 03:09:38
    Script Purpose : 
                   : 
--]]

-- If weapon equipped in Ranged
-- Must be flanking or behind
function precast(Caster, Target)
    -- Must be flanking or behind
    if not IsFlanking(Caster, Target) then
        SendMessage(Caster, "Must be flanking or behind", "yellow")
        return false
    end

    -- If weapon equipped in Ranged
    local item = GetEquippedItemBySlot(Caster, 16)
    if item then
        if GetItemType(item) == 2 then
            return true
        end
    end

    return false, 68
end

-- Inflicts 725 - 1209 ranged damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end


