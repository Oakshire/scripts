--[[
    Script Name    : Spells/Fighter/Warrior/StanceSoldiersStance.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:17
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Debuff, DefSkill, Mit)
-- Decreases Slashing, Piercing and Crushing of caster by 4.8
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), Debuff)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), Debuff)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), Debuff)
-- Increases Defense and Parry of caster by 4.3
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkill)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), DefSkill)
-- Increases the caster's effectiveness of worn armor vs physical damage by 10%
    AddSpellBonus(Target, 678, Mit)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)

end

