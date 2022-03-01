--[[
    Script Name    : Spells/AA/ProwlersCunning.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 06:12:14
    Script Purpose : 
                   : 
--]]

-- Increases Defense of caster by 4.9

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end