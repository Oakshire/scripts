--[[
    Script Name    : Spells/Scout/Predator/Ranger/Snipe.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.10 06:03:28
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, SkillAmt)
    -- Decreases Defense of target by 3.5
    AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)
end

function remove(Caster, Target)
    RemoveSkillBonus(Target)
end
