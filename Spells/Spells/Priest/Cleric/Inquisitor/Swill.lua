--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Swill.lua
    Script Author  : neatz09
    Script Date    : 2019.10.26 11:10:46
    Script Purpose : 
                   : 
--]]

-- Increases Swimming of group members (AE) by 62.1
-- Allows group members (AE) to breathe under water

function cast(Caster, Target, Skill)
    AddSkillBonus(Target, GetSkillIDByName("Swimming"), Skill)
BreatheUnderwater(Target, true)
end


function remove(Caster, Target)
    RemoveSkillBonus(Target)
BreatheUnderwater(Target, false)
end
