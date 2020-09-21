--[[
    Script Name    : Spells/Scout/Bard/Troubador/Lullaby.lua
    Script Author  : neatz09
    Script Date    : 2020.02.12 06:02:33
    Script Purpose : 
                   : 
--]]


-- Mesmerizes target
-- Prevents AOE (except when direct) 
-- Dispelled when target takes damage
-- Does not affect Epic targets
-- Resistibility increases against targets higher than level 29.
function precast(Caster, Target)
    -- Does not affect Epic targets
    if IsEpic(Target) then
        return false, 43
    end

    return true
end

function cast(Caster, Target)
    Say(Caster, "Resistability not implemented")

AddControlEffect(Target, 1) 
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 1) 
end