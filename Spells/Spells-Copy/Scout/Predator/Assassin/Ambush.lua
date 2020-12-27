--[[
    Script Name    : Spells/Scout/Predator/Assassin/Ambush.lua
    Script Author  : Jabantiz
    Script Date    : 2014.04.14 02:04:06
    Script Purpose : 
                   : 
--]]

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
