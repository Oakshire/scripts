--[[
    Script Name    : Spells/AA/BlackguardsDefense.lua
    Script Author  : neatz09
    Script Date    : 2020.12.10 05:12:22
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