--[[
    Script Name    : Spells/Scout/Predator/Ranger/TripleShot.lua
    Script Author  : neatz09
    Script Date    : 2019.10.24 03:10:20
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)   
 local item = GetEquippedItemBySlot(Caster, 16)
    if item~= nil then
        if GetItemType(item) == 2 then
            return true
        end
    end

    return false, 68
end

function cast(Caster, Target, DmgType, MinVal, MaxVal, DmgType2, MinVal2, MaxVal2, DmgType3, MinVal3, MaxVal3)
-- Inflicts 32 - 54 ranged damage on target
SpellDamage(Target, DmgType, MinVal, MaxVal)
-- Inflicts 64 - 108 ranged damage on target
if LastSpellAttackHit() then
SpellDamage(Target, DmgType2, MinVal2, MaxVal2)
end
-- Inflicts 97 - 162 ranged damage on target
if LastSpellAttackHit() then
SpellDamage(Target, DmgType3, MinVal3, MaxVal3)
end
end



