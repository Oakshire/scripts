--[[
    Script Name    : Spells/AA/DeflectingPincers.lua
    Script Author  : neatz09
    Script Date    : 2020.12.13 02:12:53
    Script Purpose : 
                   : 
--]]

-- Increases Deflection of caster by 3.5

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Deflection"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end