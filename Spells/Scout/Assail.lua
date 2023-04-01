--[[
    Script Name    : Spells/Scout/Assail.lua
    Script Author  : neatz09
    Script Date    : 2020.11.06 07:11:13
    Script Purpose : 
                   : 
--]]

-- Inflicts 26 - 44 melee damage on target
-- You must be sneaking to use this ability.


function precast(Caster, Target)
    -- You must be sneaking to use this ability.
    if IsStealthed(Caster) then
        return true
    end

    SendMessage(Caster, "You must be sneaking to use this ability.", "yellow")
    return false
end

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 14 - 24 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
