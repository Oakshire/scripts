--[[
    Script Name    : Spells/Priest/Cleric/Redoubt.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 04:01:29
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of target by 91.3
-- Increases Slashing and Crushing of target by 2.2
-- Increases Piercing of target by 4.3

function cast(Caster, Target, HP, OffSkill, Pierce)
    Level = GetLevel(Caster)
    SpellLevel = 16
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end    
    
    TotalBonus = LvlBonus *2 + StatBonus
    HpBonus = HP + math.floor(TotalBonus)
    
    AddSpellBonus(Target, 500, HpBonus)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkill)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkill)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), Pierce)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end
