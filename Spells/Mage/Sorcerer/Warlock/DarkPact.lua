--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/DarkPact.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.07 08:03:51
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt)
    -- Increases Disruption, Subjugation, Ordination, Ministration and Aggression of group members (AE) by 3.2
    AddSkillBonus(Target, GetSkillIDByName("Disruption"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Subjugation"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ordination"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ministration"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Aggression"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end
