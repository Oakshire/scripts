--[[
    Script Name    : Spells/Scout/Predator/Ranger/CripplingArrow.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.10 04:03:07
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- Requires bow
    local item = GetEquippedItemBySlot(Caster, 16)
    if not item or GetItemType(item) ~= 2 then
        -- no item or item is not a ranged item (no way to determine different range items currently)
        return false, 68
    end

    return true
end

function cast(Caster, Target, MinVal, MaxVal, SkillAmt)
    -- Inflicts 175 - 293 ranged damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, 0, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, 0, MinVal)
    end

    -- Decreases Deflection and Parry of target by 10.8
    AddSkillBonus(Target, GetSkillIDByName("Deflection"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), SkillAmt)

end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end

