--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/ForcedObedience.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.13 09:03:20
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt)
    -- Decreases Ranged, Piercing, Slashing and Crushing of target encounter by 4.9
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end
