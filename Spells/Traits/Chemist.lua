--[[
    Script Name    : Spells/Traits/Chemist.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 03:12:42
    Script Purpose : 
                   : 
--]]

-- Increases Chemistry of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Chemistry"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end