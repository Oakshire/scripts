--[[
    Script Name    : Spells/AA/InterceptingBlades.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 05:12:22
    Script Purpose : 
                   : 
--]]

-- Increases Parry of caster by 6.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end