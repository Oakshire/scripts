--[[
    Script Name    : Spells/Scout/Bard/Dirge/JaelsDreadfulDeprivation.lua
    Script Author  : neatz09
    Script Date    : 2019.10.12 10:10:32
    Script Purpose : 
                   : 
--]]
-- Inflicts 24 - 41 disease damage on target
-- Inflicts 24 - 41 disease damage on target
-- Roots target
--     If Target is not Epic
-- If weapon equipped in Ranged
-- Resistibility increases against targets higher than level 29.

function precast(Caster, Target)
 local item = GetEquippedItemBySlot(Caster, 16)
    if item~= nil then
        if GetItemType(item) == 2 then
            return true
        end
    end

    return false, 68
end


function cast(Caster, Target, DmgType, MinVal, MaxVal)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
        if LastSpellAttackHit() then
            SpellDamage(Target, DmgType, MinVal, MaxVal)
                end
if LastSpellAttackHit() and not IsEpic(Target) then
        AddControlEffect(Target, 5)
            end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 5)

end