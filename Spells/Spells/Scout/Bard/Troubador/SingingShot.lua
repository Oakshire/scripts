--[[
    Script Name    : Spells/Scout/Bard/Troubadour/SingingShot.lua
    Script Author  : Zcoretri
    Script Date    : 4.April.2014
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- If weapon equipped in Ranged
    local item = GetEquippedItemBySlot(Caster, 16) -- (16) = Ranged Weapon slot
    if not item or GetItemType(item) ~= 2 then
        -- no item or item is not a ranged item (no way to determine different ranged items yet)
        return false, 68
    end
    
    return true
end

function cast(Caster, Target, DmgType, MinDmg, MaxDmg, DmgType2, MinDmg2, MaxDmg2)
    -- Inflicts mental damage on target x2 if first one hits
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    if LastSpellAttackHit() then
        SpellDamage(Target, DmgType2, MinDmg2, MaxDmg2)
    end
    -- Stifles target
    -- If Target is not Epic
    if not IsEpic(Target) then
        AddControlEffect(Target, 2) -- Stifle
    end
    -- Resistibility increases against targets higher than level 29.
end

function remove(Caster, Target, DmgType, MinDmg, MaxDmg, DmgType2, MinDmg2, MaxDmg2)
    RemoveControlEffect(Target, 2)
end
