--[[
    Script Name    : Spells/Scout/Rogue/FancyFootwork.lua
    Script Author  : neatz09
    Script Date    : 2020.11.10 11:11:26
    Script Purpose : 
                   : 
--]]

-- Decreases Slashing, Piercing and Crushing of caster by 13.8
-- Increases Defense and Parry of caster by 4.9
-- Increases the caster's effectiveness of worn armor vs physical damage by 10%

function cast(Caster, Target, OffSkills, DefSkills, Armor)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkills)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), DefSkills)
    AddSpellBonus(Target, 678, Armor)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
	RemoveSpellBonus(Target)   
end