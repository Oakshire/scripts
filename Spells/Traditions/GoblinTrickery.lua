--[[
    Script Name    : Spells/Traditions/GoblinTrickery.lua
    Script Author  : neatz09
    Script Date    : 2021.07.31 12:07:49
    Script Purpose : 
                   : 
--]]

--[[

*Decreases Defense of target by 0.9

--]]

function cast(Caster, Target, SkillAmt)
    AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)
end


function remove(Caster, Target)
    RemoveSkillBonus(Target)
end