--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/HeadCrush.lua
    Script Author  : neatz09
    Script Date    : 2019.10.11 06:10:36
    Script Purpose : 
                   : 
--]]

-- Inflicts 41 - 125 crushing damage on target
function cast(Caster, Target, DmgType, MinVal, MaxVal, SkillAmt)
SpellDamage(Target, DmgType, MinVal, MaxVal)
if LastSpellAttackHit() then
-- Interrupts target
Interrupt(Target)
end
if LastSpellAttackHit() then
-- Decreases Focus of target by 6.9
    AddSkillBonus(Target, GetSkillIDByName("Focus"), SkillAmt)
end
end
function remove(Caster, Target)
    RemoveSkillBonus(Target)
end