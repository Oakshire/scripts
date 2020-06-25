--[[
    Script Name    : Spells/Fighter/Crusader/Paladin/KnightsStance.lua
    Script Author  : neatz09
    Script Date    : 2019.11.09 01:11:29
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)

function cast(Caster, Target, Phys, Sta, Avoid, OffSkill, DefSkill, Arcane, Armor)
-- Reduces physical damage done to caster by 5%
    AddSpellBonus(Target, 200, Phys)
    Say(Caster, "Need % for Physical Mit. Using Stat 200 for now.")
-- Increases STA of caster by 11.9
    AddSpellBonus(Target, 1, Sta)
-- Adds 2.8% to base avoidance.
    AddSpellBonus(Target, 696, Avoid)
-- Decreases Slashing, Piercing and Crushing of caster by 1.4
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkill)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), OffSkill)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkill)
-- Increases Defense and Aggression of caster by 1.6
    AddSkillBonus(Target, GetSkillIDByName("Defense"), DefSkill)
    AddSkillBonus(Target, GetSkillIDByName("Aggression"), DefSkill)
-- Increases Mitigation of caster vs arcane damage by 138
    AddSpellBonus(Target, 203, Arcane)
-- Increases the caster's effectiveness of worn armor vs physical damage by 15%
    AddSpellBonus(Target, 678, Armor)

end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)

end

