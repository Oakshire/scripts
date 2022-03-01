--[[
    Script Name    : Spells/Traits/MightoftheLeatherfoot.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 02:12:32
    Script Purpose : 
                   : 
--]]

-- Increases Piercing and Ranged of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
	AddSkillBonus(Target, GetSkillIDByName("Ranged"), SkillAmt)
end


function remove(Caster, Target)
    RemoveSkillBonus(Target)
end