--[[
    Script Name    : Spells/Traits/ProficientSwipe.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 04:12:26
    Script Purpose : 
                   : 
--]]

-- Increases Crushing and Slashing of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
	AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
end


function remove(Caster, Target)
    RemoveSkillBonus(Target)
end