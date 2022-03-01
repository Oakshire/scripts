--[[
    Script Name    : Spells/Traits/HighPriestsGuidance.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 01:12:30
    Script Purpose : 
                   : 
--]]

-- Increases Ministration and Defense of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ministration"), SkillAmt)
	AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)
end


function remove(Caster, Target)
    RemoveSkillBonus(Target)
end