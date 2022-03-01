--[[
    Script Name    : Spells/Fighter/StanceToughness.lua
    Script Author  : neatz09
    Script Date    : 2020.11.03 03:11:34
    Script Purpose : 
                   : 
--]]

-- Decreases Slashing, Crushing and Piercing of caster by 1.8
-- Increases Defense and Parry of caster by 1.6
-- Increases the caster's effectiveness of worn armor vs physical damage by 10%

function cast(Caster, Target, OffSkills, DefSkills, Armor)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkills)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), DefSkills)
    AddSpellBonus(Target, 678, Armor)
end

function remove(Caster, Target)
	RemoveSkillBonus(Target)
	RemoveSpellBonus(Target)
end