--[[
    Script Name    : Spells/Mage/Enchanter/Illusionist/Dismay.lua
    Script Author  : neatz09
    Script Date    : 2019.09.23 05:09:23
    Script Purpose : 
                   : 
--]]

-- Decreases Crushing, Piercing, Slashing and Ranged of target by 20.3
function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), SkillAmt)

end


function remove(Caster, Target)
    RemoveSkillBonus(Target)

end


