--[[
    Script Name    : Spells/AA/EliminatorsPrecision.lua
    Script Author  : neatz09
    Script Date    : 2020.12.15 05:12:36
    Script Purpose : 
                   : 
--]]

-- Increases Ranged, Crushing, Slashing and Piercing of caster by 1.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
end


function remove(Caster, Target)
    RemoveSkillBonus(Target)
end