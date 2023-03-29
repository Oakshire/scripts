--[[
    Script Name    : Spells/Fighter/Warrior/Mangle.lua
    Script Author  : LordPazuzu
    Script Date    : 3/28/2023
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
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = math.floor(DmgBonus) * 2 + MaxVal
    MinDmg = math.floor(DmgBonus) * 2 + MinVal
    
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