--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/Mesmerize.lua
    Script Author  : neatz09
    Script Date    : 2020.05.08 10:05:53
    Script Purpose : 
                   : 
--]]

-- Mesmerizes target
-- Prevents AOE (except when direct) 
-- Dispelled when target takes damage
-- Epic targets gain an immunity to Mesmerize effects of 45.0 seconds and duration is reduced to 5.0 seconds.
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
