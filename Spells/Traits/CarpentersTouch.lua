--[[
    Script Name    : Spells/Traits/CarpentersTouch.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 02:12:03
    Script Purpose : 
                   : 
--]]

-- Increases Sculpting of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Sculpting"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end