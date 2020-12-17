--[[
    Script Name    : Spells/AA/DreamweaversFocus.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 01:12:51
    Script Purpose : 
                   : 
--]]

-- Increases Disruption and Subjugation of caster by 7.0


function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Disruption"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Subjugation"), SkillAmt)

end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end