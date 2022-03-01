--[[
    Script Name    : Spells/AA/EaglesTalon.lua
    Script Author  : neatz09
    Script Date    : 2020.12.13 01:12:58
    Script Purpose : 
                   : 
--]]

-- Increases Parry of caster by 0.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end