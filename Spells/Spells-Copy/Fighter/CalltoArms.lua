--[[
    Script Name    : Spells/Fighter/CalltoArms.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:58
    Script Purpose : 
                   : 
--]]

-- Increases Crushing, Piercing and Slashing of group members (AE) by 1.9
function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)

end

function remove(Caster, Target)
    RemoveSkillBonus(Target)

end
