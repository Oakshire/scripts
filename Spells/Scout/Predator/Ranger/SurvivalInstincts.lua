--[[
    Script Name    : Spells/Scout/Predator/Ranger/SurvivalInstincts.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.10 07:03:07
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Agi, Avoid, OffAmt, Parry, Def)
    -- Increases AGI of caster by 13.1
    AddSpellBonus(Target, 2, Agi)

    -- Adds 1.4% to base avoidance.
    AddSpellBonus(Target, 696, Avoid)

    -- Decreases Slashing and Piercing of caster by 13.8
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffAmt)

    -- Increases Parry of caster by 7.3
    AddSkillBonus(Target, GetSkillIDByName("Parry"), Parry)

    -- Increases Defense of caster by 9.7
    AddSkillBonus(Target, GetSkillIDByName("Defense"), Def)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end
