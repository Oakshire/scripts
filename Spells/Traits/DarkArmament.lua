--[[
    Script Name    : Spells/Traits/DarkArmament.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 04:12:23
    Script Purpose : 
                   : 
--]]

-- Increases Metal Shaping of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Metal Shaping"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end