--[[
    Script Name    : Spells/Fighter/Warrior/Mangle.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:17
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, SkillAmt)
-- Inflicts 21 - 35 slashing damage on target
SpellDamage(Target, DmgType, MinVal, MaxVal)
-- Decreases Slashing, Crushing and Piercing of target by 1.5
if LastSpellAttackHit() then
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
end
    end


function remove(Caster, Target)
    RemoveSkillBonus(Target)
end