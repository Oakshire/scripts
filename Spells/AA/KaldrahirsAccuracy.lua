--[[
    Script Name    : Spells/AA/KaldrahirsAccuracy.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 02:12:55
    Script Purpose : 
                   : 
--]]

-- Increases Crushing, Slashing, Piercing and Ranged of caster by 4.5

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end