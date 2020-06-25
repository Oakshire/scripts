--[[
    Script Name    : Spells/Scout/Bard/Troubador/RejuvenatingCelebration.lua
    Script Author  : neatz09
    Script Date    : 2019.09.23 03:09:52
    Script Purpose : 
                   : 
--]]


-- Increases STA of group members (AE) by 63.6
-- Increases Combat Health Regen of group members (AE) by 125.3

function cast(Caster, Target, Sta, Regen)
        AddSpellBonus(Target, 1, Sta)
        AddSpellBonus(Target, 604, Regen)

end


function remove(Caster, Target, Sta, Regen)
    RemoveSpellBonus(Target)

end
