--[[
    Script Name    : Spells/Scout/DirtyTricks.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 04:01:24
    Script Purpose : 
                   : 
--]]

-- Decreases Defense of target by 2.3
-- If facing target

function cast(Caster, Target, SkillAmt)
    Say(Caster, "Facing Target not Implemented.")
    AddSkillBonus(Target, GetSkillIDByName("Defense"), SkillAmt)

end


function remove(Caster, Target)
    RemoveSkillBonus(Target)

end
