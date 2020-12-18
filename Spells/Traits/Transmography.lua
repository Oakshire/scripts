--[[
    Script Name    : Spells/Traits/Transmography.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 02:12:33
    Script Purpose : 
                   : 
--]]

-- Increases Transmuting of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Transmuting"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end