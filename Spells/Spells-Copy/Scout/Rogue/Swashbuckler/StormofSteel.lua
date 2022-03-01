--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/StormofSteel.lua
    Script Author  : neatz09
    Script Date    : 2019.09.23 01:09:55
    Script Purpose : 
                   : 
--]]
-- If weapon equipped in Ranged
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

-- Inflicts 298 - 497 ranged damage on targets in Area of Effect

function cast(Caster, Target, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, MinVal)
    end
end

