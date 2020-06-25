--[[
    Script Name    : Spells/Scout/Bard/Dirge/SongstersLuck.lua
    Script Author  : theFoof
    Script Date    : 2013.12.08 04:12:42
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt)
-- Increases Slashing, Crushing, Piercing and Ranged of group members (AE)

    AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Caster)
end