--[[
    Script Name    : Spells/Traits/ChasingBallsofYarn.lua
    Script Author  : neatz09
    Script Date    : 2020.12.18 03:12:27
    Script Purpose : 
                   : 
--]]

-- Increases Tailoring of caster by 5.0

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Tailoring"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end