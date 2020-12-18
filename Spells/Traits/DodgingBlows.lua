--[[
    Script Name    : Spells/Traits/DodgingBlows.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 04:12:18
    Script Purpose : 
                   : 
--]]

-- Increases Disruption and Defense of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Disruption"), SkillAmt)
	AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)
end


function remove(Caster, Target)
    RemoveSkillBonus(Target)
end