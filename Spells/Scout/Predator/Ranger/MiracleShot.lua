--[[
    Script Name    : Spells/Scout/Predator/Ranger/MiracleShot.lua
    Script Author  : neatz09
    Script Date    : 2019.09.28 05:09:27
    Script Purpose : 
                   : 
--]]

-- Requires bow or aim
function precast(Caster, Target)
    -- Requires bow
    local item = GetEquippedItemBySlot(Caster, 16)
    if not item or GetItemType(item) ~= 2 then
        -- no item or item is not a ranged item (no way to determine different range items currently)
        return false, 68
    end

    return true
end

-- Inflicts 170 - 284 ranged damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

end


-- Requires you to currently have line of sight or to have acquired the target with line of sight

