--[[
    Script Name    : Spells/Traits/NobilityofFaith.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 02:12:14
    Script Purpose : 
                   : 
--]]

-- Increases Ministration of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Ministration"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end