--[[
    Script Name    : Spells/Traits/ForestKnowledge.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 02:12:48
    Script Purpose : 
                   : 
--]]

-- Increases Fletching of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Fletching"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end