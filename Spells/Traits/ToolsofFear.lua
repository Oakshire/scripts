--[[
    Script Name    : Spells/Traits/ToolsofFear.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 01:12:50
    Script Purpose : 
                   : 
--]]

-- Increases Disruption and Subjugation of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Subjugation"), SkillAmt)
	AddSkillBonus(Target, GetSkillIDByName("Disruption"), SkillAmt)
end


function remove(Caster, Target)
    RemoveSkillBonus(Target)
end