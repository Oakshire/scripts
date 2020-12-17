--[[
    Script Name    : Spells/Traits/InstrumentsoftheUnderfoot.lua
    Script Author  : neatz09
    Script Date    : 2020.12.17 03:12:17
    Script Purpose : 
                   : 
--]]

-- Increases Metalworking of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Metalworking"), SkillAmt)
end


function remove(Caster, Target)
    RemoveSkillBonus(Target)
end