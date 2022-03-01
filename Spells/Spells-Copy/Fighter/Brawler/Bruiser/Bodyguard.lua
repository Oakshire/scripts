--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/Bodyguard.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.10 09:03:09
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, PhyDmg, Avoid, Deflect, Parry, OffSkill, Agg, DefSkill, NoxMit, Armor)
    -- Reduces physical damage done to caster by 5%
    -- AddSpellBonus(Target, , PhyDmg)
    Say(Caster, "Not Implemented: physical damage reduction")

    -- Adds 1.3% to base avoidance.
    AddSpellBonus(Target, 696, Avoid)

    -- Caster will deflect 9.0% of incoming attacks.
    AddSpellBonus(Target, 670, Deflect)

    -- Increases Parry of caster by 1.6
    AddSkillBonus(Target, GetSkillIDByName("Parry"), Parry)

    -- Decreases Crushing, Piercing and Slashing of caster by 1.8
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkill)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkill)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkill)

    -- Increases Aggression of caster by 1.2
    AddSkillBonus(Target, GetSkillIDByName("Aggression"), Agg)

    -- Increases Deflection and Defense of caster by 1.6
    AddSkillBonus(Target, GetSkillIDByName("Deflection"), DefSkill)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkill)

    -- Increases Mitigation of caster vs noxious damage by 138
    AddSpellBonus(Target, 202, NoxMit)

    -- Increases the caster's effectiveness of worn armor vs physical damage by 25%
    AddSpellBonus(Target, 678, Armor)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end

