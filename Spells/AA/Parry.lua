--[[
    Script Name    : Spells/AA/Parry.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 02:12:06
    Script Purpose : 
                   : 
--]]

-- Increases Parry of caster by 3.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Parry"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end
