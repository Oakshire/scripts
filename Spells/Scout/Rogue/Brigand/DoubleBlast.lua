--[[
    Script Name    : Spells/Scout/Rogue/Brigand/DoubleBlast.lua
    Script Author  : Zcoretri
    Script Date    : 17.March.2014
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- If weapon equipped in Ranged
    local item = GetEquippedItemBySlot(Caster, 16)
    if not item or GetItemType(item) ~= 2 then
        -- no item or item is not a ranged item (no way to determine different range items currently)
        return false, 68
    end
    
    return true
end

function cast(Caster, Target, MinDmg, MaxDmg, MinDmg2, MaxDmg2)
    -- Inflicts ranged damage on target x2 if first one hits
    SpellDamage(Target, MinDmg, MaxDmg)
    if LastSpellAttackHit() then
        SpellDamage(Target, MinDmg2, MaxDmg2)
    end
    -- Applies Knockdown on termination.  Lasts for 2.5 seconds.
    -- Throws target back
    -- Blurs vision of target
    -- Stuns target
    -- Does not affect Epic targets
    if not IsEpic(Target) then
        AddControlEffect(Target, 4) -- Stun
        Knockback(Caster, Target, 2500)
        BlurVision(Target, 0.5)
    end

end

function remove(Caster, Target, MinDmg, MaxDmg, MinDmg2, MaxDmg2)
    RemoveControlEffect(Target, 4)
    BlurVision(Target, 0)
end

