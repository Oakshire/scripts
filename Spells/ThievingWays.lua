--[[
    Script Name    : Spells/ThievingWays.lua
    Script Author  : neatz09
    Script Date    : 2020.08.14 03:08:35
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- Grants the skill Disarm Trap.

function cast(Caster, Target)
    AddSkillBonus(Target, GetSkillIDByName("Disarm Trap"), 1)
end


function remove(Caster, Target)
    RemoveSkillBonus(Target)

end
