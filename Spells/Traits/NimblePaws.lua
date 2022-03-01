--[[
    Script Name    : Spells/Traits/NimblePaws.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 03:12:11
    Script Purpose : 
                   : 
--]]

-- Increases Disruption and Defense of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Disruption"), SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end