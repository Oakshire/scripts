--[[
    Script Name    : Spells/Fighter/Brawler/Monk/BlackWidowStance.lua
    Script Author  : neatz09
    Script Date    : 2019.11.14 08:11:39
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Deflect, Haste, Parry, SkillAmt, Arcane, Armor)
-- Caster will deflect 4.5% of incoming attacks.
    AddSpellBonus(Target, 670, Deflect)
-- Increases Attack Speed of caster by 11.4
    AddSpellBonus(Target, 617, Haste)
-- Increases Parry of caster by 7.8
    AddSkillBonus(Target, GetSkillIDByName("Parry"), Parry)
-- Increases Deflection, Slashing, Piercing, Crushing and Ranged of caster by 7.8
    AddSkillBonus(Target, GetSkillIDByName("Deflection"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), SkillAmt)
-- Increases Mitigation of caster vs arcane damage by 522
    AddSpellBonus(Target, 203, Arcane)
-- Increases the caster's effectiveness of worn armor vs physical damage by 13%
    AddSpellBonus(Target, 678, Armor)

end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)

end
