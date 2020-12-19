--[[
    Script Name    : Spells/Traits/MagicalTeachings.lua
    Script Author  : neatz09
    Script Date    : 2020.12.19 02:12:58
    Script Purpose : 
                   : 
--]]

-- Increases Scribing of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Scribing"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end