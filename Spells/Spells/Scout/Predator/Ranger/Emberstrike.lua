--[[
    Script Name    : Spells/Scout/Predator/Ranger/Emberstrike.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.09 08:03:38
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- You must be sneaking to use this ability.
    if IsStealthed(Caster) then
        return true
    else
        SendMessage(Caster, "You must be sneaking to use this ability.", "yellow")
        return false
    end
end

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 14 - 23 heat damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end