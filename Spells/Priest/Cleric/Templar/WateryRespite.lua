--[[
    Script Name    : Spells/Priest/Cleric/Templar/WateryRespite.lua
    Script Author  : neatz09
    Script Date    : 2019.11.04 07:11:39
    Script Purpose : 
                   : 
--]]

-- Increases Swimming of group members (AE) by 69.0
-- Allows group members (AE) to breathe under water

function cast(Caster, Target, SkillAmt)
BreatheUnderwater(Target, true)
    AddSkillBonus(Target, GetSkillIDByName("Swimming"), SkillAmt)

end


function remove(Caster, Target)
BreatheUnderwater(Target, false)
    RemoveSkillBonus(Target)

end
