--[[
    Script Name    : Spells/Scout/Bard/Troubador/SongofMagic.lua
    Script Author  : neatz09
    Script Date    : 2020.02.11 05:02:15
    Script Purpose : 
                   : 
--]]


-- Increases Disruption, Subjugation, Ordination, Ministration and Aggression of group members (AE) by 1.4
-- Increases Focus of group members (AE) by 2.9

function cast(Caster, Target, SkillAmt, Foc)
    AddSkillBonus(Target, GetSkillIDByName("Disruption"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Subjugation"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ordination"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ministration"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Aggression"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Focus"), Foc)

end

function remove(Caster, Target)
    RemoveSkillBonus(Target)

end
