--[[
    Script Name    : Spells/DragoonsAvoidance.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 02:12:34
    Script Purpose : 
                   : 
--]]

-- Increases Defense of caster by 2.5

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end