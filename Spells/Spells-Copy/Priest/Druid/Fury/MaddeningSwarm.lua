--[[
    Script Name    : Spells/Priest/Druid/Fury/MaddeningSwarm.lua
    Script Author  : neatz09
    Script Date    : 2019.10.09 05:10:01
    Script Purpose : 
                   : 
--]]

-- Interrupts target encounter
function cast(Caster, Target, SkillAmt)
    Interrupt(Target)
-- Decreases Disruption, Ordination, Ministration, Subjugation, Focus and Aggression of target encounter by 15.2
    AddSkillBonus(Target, GetSkillIDByName("Disruption"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ordination"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ministration"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Subjugation"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Focus"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Agression"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end


