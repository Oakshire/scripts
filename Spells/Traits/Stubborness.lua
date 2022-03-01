--[[
    Script Name    : Spells/Traits/Stubborness.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 01:12:58
    Script Purpose : 
                   : 
--]]

-- Increases Defense, Parry and Deflection of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)
	AddSkillBonus(Target, GetSkillIDByName("Parry"), SkillAmt)
	AddSkillBonus(Target, GetSkillIDByName("Deflection"), SkillAmt)
end


function remove(Caster, Target)
    RemoveSkillBonus(Target)
end