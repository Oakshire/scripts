--[[
    Script Name    : Spells/Traits/BreakingDowntheTrash.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 03:12:11
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