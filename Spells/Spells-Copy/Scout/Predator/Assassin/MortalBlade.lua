--[[
    Script Name    : Spells/Scout/Predator/Assassin/MortalBlade.lua
    Script Author  : neatz09
    Script Date    : 2019.09.23 03:09:36
    Script Purpose : 
                   : 
--]]
-- You must be in stealth.
function precast(Caster, Target)
    -- You must be sneaking to use this ability.
    if IsStealthed(Caster) then
        return true
    end

    SendMessage(Caster, "You must be sneaking to use this ability.", "yellow")
    return false
end

-- Inflicts 400 - 666 melee damage on target

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

