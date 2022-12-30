--[[
    Script Name    : Spells/Fighter/Warrior/Mangle.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:17
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal, SkillAmt, SpellLevel)
    
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus * 1.5 + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus)
    MinDmg = MinVal + math.floor(DmgBonus)
    
    SpellDamage(Target, 0, MinDmg, MaxDmg)

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