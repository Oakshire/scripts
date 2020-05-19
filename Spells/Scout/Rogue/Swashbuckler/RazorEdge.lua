--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/RazorEdge.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.16 01:12:44
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- Must be in front of or flanking
    return (not IsBehind(Target, Caster))
end


function cast(Caster, Target, DmgType, MinVal, MaxVal, SkillAmt)
    -- Inflicts 98 - 163 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Decreases Parry of target by 8.1
    if LastSpellAttackHit() then
        AddSkillBonus(Target, GetSkillIDByName("Parry"), SkillAmt)
    end
end


