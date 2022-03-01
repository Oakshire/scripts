--[[
    Script Name    : Spells/Mage/Summoner/VampireBats.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.08 12:12:29
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DoTType, MinVal, MaxVal, bonus)
    -- Inflicts 14 - 22 piercing damage on target instantly and every 4 seconds
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DoTType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DoTType, MinVal)
    end

    -- Decreases Defense of target by 2.7
    AddSkillBonus(Target, GetSkillIDByName("Defense"), bonus)
end


function tick(Caster, Target, DoTType, MinVal, MaxVal)
    -- Inflicts 14 - 22 piercing damage on target instantly and every 4 seconds
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DoTType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DoTType, MinVal)
    end
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end
