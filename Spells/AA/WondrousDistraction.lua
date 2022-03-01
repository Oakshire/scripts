--[[
    Script Name    : Spells/AA/WondrousDistraction.lua
    Script Author  : neatz09
    Script Date    : 2020.12.16 03:12:04
    Script Purpose : 
                   : 
--]]

-- Mesmerizes target
-- Prevents AOE (except when direct) 
-- Dispelled when target takes damage
-- Does not affect Epic targets
-- Resistibility increases against targets higher than level 29.

function cast(Caster, Target)
    AddControlEffect(Target, 1)
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 1)
end