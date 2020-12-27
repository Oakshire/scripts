--[[
    Script Name    : Spells/Scout/Predator/Assassin/Assassinate.lua
    Script Author  : neatz09
    Script Date    : 2019.08.12 08:08:47
    Script Purpose : 
                   : 
--]]

-- Inflicts 2007 - 3345 melee damage on target
-- You must be stealthed to use this ability
function precast(Caster, Target)
    -- You must be sneaking to use this ability.
    if IsStealthed(Caster) then
        return true
    end

    SendMessage(Caster, "You must be sneaking to use this ability.", "yellow")
    return false
end

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 2007 - 3345 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end