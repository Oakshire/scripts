--[[
    Script Name    : Spells/Fighter/Crusader/StanceKnightsStance.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 04:11:47
    Script Purpose : 
                   : 
--]]

-- Increases WIS of caster by 23.8
-- Decreases Slashing, Piercing and Crushing of caster by 4.8
-- Increases Defense of caster by 4.3
-- Increases the caster's effectiveness of worn armor vs physical damage by 10%

function cast(Caster, Target, Wis, OffSkill, DefSkill, Armor)
    AddSpellBonus(Target, 3, Wis)
    AddSpellBonus(Target, 678, Armor)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkill)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkill)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkill)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkill)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end