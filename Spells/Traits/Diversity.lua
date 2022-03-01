--[[
    Script Name    : Spells/Traits/Diversity.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 03:12:59
    Script Purpose : 
                   : 
--]]

-- Increases Artistry, Fletching, Sculpting, Metal Shaping, Metalworking, Tailoring, Artificing, Chemistry and Scribing of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Artistry"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Fletching"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Sculpting"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Metal Shaping"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Metalworking"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Tailoring"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Artificing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Chemistry"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Scribing"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end