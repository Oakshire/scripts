--[[
    Script Name    : Spells/Traits/HoldStrong.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 02:12:42
    Script Purpose : 
                   : 
--]]

-- Increases Defense, Parry and Deflection of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), SkillAmt)
	AddSkillBonus(Target, GetSkillIDByName("Deflection"), SkillAmt)
	AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)
end


function remove(Caster, Target)
    RemoveSkillBonus(Target)
end