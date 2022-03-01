--[[
    Script Name    : Spells/ReptilianGrace.lua
    Script Author  : neatz09
    Script Date    : 2020.08.14 03:08:16
    Script Purpose : 
                   : 
--]]

-- Grants the skill Safefall.

function cast(Caster, Target)
    AddControlEffect(Target, 14)
end


function remove(Caster, Target)
    RemoveControlEffect(Target, 14)
end

