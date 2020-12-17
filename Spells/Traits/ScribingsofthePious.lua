--[[
    Script Name    : Spells/Traits/ScribingsofthePious.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 04:12:22
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