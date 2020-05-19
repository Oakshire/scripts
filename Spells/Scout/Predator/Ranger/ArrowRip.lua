--[[
    Script Name    : Spells/Scout/Predator/Ranger/ArrowRip.lua
    Script Author  : neatz09
    Script Date    : 2019.11.04 10:11:47
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 212 - 353 melee damage on target
    SpellDamage(Target, DmgType, MinVal, MaxVal)
    -- Returns the last arrow used to the ranger.
    if LastSpellAttackHit() then
        local item = GetEquippedItemBySlot(Caster, 17)
        if item ~= nil then
            local item_id = GetItemID(item)
            SummonItem(Caster, item_id, 1)
        end
    end
end