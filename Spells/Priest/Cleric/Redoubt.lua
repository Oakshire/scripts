--[[
    Script Name    : Spells/Priest/Cleric/Redoubt.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 04:01:29
    Script Purpose : 
                   : 
--]]

-- Increases Max Health of target by 91.3
-- Increases Slashing and Crushing of target by 2.2
-- Increases Piercing of target by 4.3

function cast(Caster, Target, HP, OffSkill, Pierce)
    AddSpellBonus(Target, 600, HP)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), OffSkill)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), OffSkill)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), Pierce)
end


function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSkillBonus(Target)
end
