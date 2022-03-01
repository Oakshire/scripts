--[[
    Script Name    : Spells/Scout/Predator/Ranger/BloodyReminder.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.10 06:03:26
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, TickDmgType, TickDmg, DmgType, MinVal, MaxVal)
    -- Inflicts 30 piercing damage on target instantly and every 2.6 seconds
    SpellDamage(Target, TickDmgType, TickDmg)

    -- Inflicts 11 - 18 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

function tick(Caster, Target, TickDmgType, TickDmg, DmgType, MinVal, MaxVal)
    -- Inflicts 30 piercing damage on target instantly and every 2.6 seconds
    SpellDamage(Target, TickDmgType, TickDmg)
end
