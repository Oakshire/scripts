--[[
    Script Name    : Spells/Scout/Bard/SongstersLuck.lua
    Script Author  : neatz09
    Script Date    : 2020.11.06 06:11:56
    Script Purpose : 
                   : 
--]]

-- Increases Slashing, Crushing, Piercing and Ranged of group members (AE) by 4.6

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end