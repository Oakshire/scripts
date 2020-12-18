--[[
    Script Name    : Spells/Traits/AyrDalAdornment.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 04:12:01
    Script Purpose : 
                   : 
--]]

-- Increases Artificing of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Artificing"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end