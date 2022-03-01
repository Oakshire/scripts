--[[
    Script Name    : Spells/Traits/Brewmaster.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 03:12:45
    Script Purpose : 
                   : 
--]]

-- Increases Artistry of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Artistry"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end