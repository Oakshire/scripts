--[[
    Script Name    : Spells/Scout/Predator/Assassin/SpineShot.lua
    Script Author  : Jabantiz
    Script Date    : 2014.04.17 04:04:06
    Script Purpose : 
                   : 
--]]
function precast(Caster, Target)
-- Must be flanking or behind
    if not IsFlanking(Target, Caster) then
        SendMessage(Caster, "Must be flanking or behind", "yellow")
        return false
    end

    -- If weapon equipped in Ranged
    local item = GetEquippedItemBySlot(Caster, 16)
    if item~= nil then
        if GetItemType(item) == 2 then
            return true
        end
    end

    return false, 68
end

function cast(Caster, Target, MinVal, MaxVal)
    -- Inflicts 189 - 315 ranged damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, 0, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, 0, MinVal)
    end
end
