--[[
    Script Name    : Spells/Scout/Predator/Assassin/DeadlyShot.lua
    Script Author  : Jabantiz
    Script Date    : 2014.04.17 03:04:40
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


function cast(Caster, Target, MinVal, MaxVal)
    -- Inflicts 8 - 13 ranged damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, 0, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, 0, MinVal)
    end

    if LastSpellAttackHit() then
        -- Inflicts 8 - 13 ranged damage on target
        if MaxVal ~= nil and MinVal < MaxVal then
            SpellDamage(Target, 0, math.random(MinVal, MaxVal))
        else
            SpellDamage(Target, 0, MinVal)
        end
    end
end
