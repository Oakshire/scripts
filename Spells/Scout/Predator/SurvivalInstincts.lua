--[[
    Script Name    : Spells/Scout/Predator/SurvivalInstincts.lua
    Script Author  : neatz09
    Script Date    : 2020.11.04 12:11:49
    Script Purpose : 
                   : 
--]]

-- Increases AGI of caster by 13.1
-- Decreases Slashing, Piercing and Crushing of caster by 13.8
-- Increases Parry of caster by 7.3
-- Increases Defense of caster by 9.7

function cast(Caster, Target, Agi, OffSkillz, Par, Def)
    AddSpellBonus(Target, 2, Agi)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkillz)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkillz)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkillz)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), Par)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), Def)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end