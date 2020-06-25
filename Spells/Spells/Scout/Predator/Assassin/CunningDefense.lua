--[[
    Script Name    : Spells/Scout/Predator/Assassin/CunningDefense.lua
    Script Author  : Jabantiz
    Script Date    : 2014.04.17 04:04:20
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Agi, Avoid, OffSkills, Parry, Def)
    -- Increases AGI of caster by 13.1
    AddSpellBonus(Target, 2, Agi)

    -- Adds 1.4% to base avoidance.
    AddSpellBonus(Target, 696, Avoid)

    -- Decreases Slashing and Piercing of caster by 13.8
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkills)

    -- Increases Parry of caster by 7.3
    AddSkillBonus(Target, GetSkillIDByName("Parry"), Parry)

    -- Increases Defense of caster by 9.7
    AddSkillBonus(Target, GetSkillIDByName("Defense"), Def)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end
