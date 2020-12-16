--[[
    Script Name    : Spells/AA/ExorcistsConcentration.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 03:12:55
    Script Purpose : 
                   : 
--]]

-- Increases Ordination, Ministration, Subjugation and Disruption of caster by 0.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ordination"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ministration"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Subjugation"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Disruption"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end