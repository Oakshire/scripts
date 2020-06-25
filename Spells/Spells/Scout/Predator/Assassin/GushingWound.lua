--[[
    Script Name    : Spells/Scout/Predator/Assassin/GushingWound.lua
    Script Author  : Jabantiz
    Script Date    : 2014.04.14 02:04:57
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, DoTType, MinVal, MaxVal, DmgType2, MinVal2, MaxVal2)
    -- Inflicts 1 - 2 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, DoTType, MinVal, MaxVal, DmgType2, MinVal2, MaxVal2)
    -- Inflicts 2 - 3 piercing damage on target instantly and every 4 seconds
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DoTType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DoTType, MinVal)
    end
end

function remove(Caster, Target, DmgType, MinVal, MaxVal, DoTType, MinVal, MaxVal, DmgType2, MinVal2, MaxVal2)
    -- Applies Untreated Bleeding on termination.
    --     Inflicts 9 - 14 piercing damage on target
    ProcDamage(Caster, Target, "Untreated Bleeding", DmgType2, MinVal2, MaxVal2)
end

