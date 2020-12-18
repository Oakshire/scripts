--[[
    Script Name    : Spells/Traits/TimberShaper.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 03:12:11
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