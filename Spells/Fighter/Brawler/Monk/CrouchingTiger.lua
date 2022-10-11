--[[
    Script Name    : Spells/Fighter/Brawler/Monk/CrouchingTiger.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.12 04:01:06
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Avoid, Deflect, DefSkills, OffSkills, Agg, ArcaneMit, Armor)
    -- Reduces physical damage done to caster by 5%
    AddSpellBonus(Target, 313, 5) -- Not sure on the stat

    -- Adds 1.3% to base avoidance.
    AddSpellBonus(Target, 696, Avoid)

    -- Caster will deflect 9.0% of incoming attacks.
    AddSpellBonus(Target, 670, Deflect) -- Not sure about the stat

    -- Increases Parry of caster by 1.6
    -- Increases Deflection and Defense of caster by 1.6
    AddSkillBonus(Target, GetSkillIDByName("Parry"), DefSkills)
    AddSkillBonus(Target, GetSkillIDByName("Deflection"), DefSkills)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkills)

    -- Decreases Crushing, Piercing and Slashing of caster by 1.8
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkills)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkills)

    -- Increases Aggression of caster by 1.0
    AddSkillBonus(Target, GetSkillIDByName("Aggression"), Agg)

    -- Increases Mitigation of caster vs arcane damage by 138
    AddSpellBonus(Target, 203, ArcaneMit)

    -- Increases the caster's effectiveness of worn armor vs physical damage by 25%
    AddSpellBonus(Target, 678, Armor)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end
