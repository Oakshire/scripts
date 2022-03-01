--[[
    Script Name    : Spells/Traits/GnomishIngenuity.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 04:12:29
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