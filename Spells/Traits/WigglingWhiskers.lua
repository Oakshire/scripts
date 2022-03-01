--[[
    Script Name    : Spells/WigglingWhiskers.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 03:12:46
    Script Purpose : 
                   : 
--]]

-- Increases Disruption and Subjugation of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Disruption"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Subjugation"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end