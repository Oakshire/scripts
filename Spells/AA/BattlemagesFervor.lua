--[[
    Script Name    : Spells/AA/BattlemagesFervor.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 04:12:08
    Script Purpose : 
                   : 
--]]

-- Increases Focus, Disruption, Subjugation and Ordination of caster by 0.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Focus"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Disruption"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Subjugation"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ordination"), SkillAmt)
    Say(Caster, "need formula")
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end