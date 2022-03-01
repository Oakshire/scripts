--[[
    Script Name    : Spells/AA/Weave.lua
    Script Author  : neatz09
    Script Date    : 2020.12.15 05:12:34
    Script Purpose : 
                   : 
--]]

-- Increases Disruption, Ordination, Subjugation and Focus of caster by 1.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Disruption"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ordination"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Subjugation"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Focus"), SkillAmt)

end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end