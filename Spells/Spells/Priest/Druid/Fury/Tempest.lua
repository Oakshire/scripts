--[[
    Script Name    : Spells/Priest/Druid/Fury/Tempest.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.14 02:01:11
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 7 - 8 cold damage on target instantly and every 2 seconds
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Inflicts 7 - 8 cold damage on target instantly and every 2 seconds
    --     If target is elemental
    Say(Caster, "Not Implemented: Bonus damage to elementals")
end

function tick(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 7 - 8 cold damage on target instantly and every 2 seconds
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    -- Inflicts 7 - 8 cold damage on target instantly and every 2 seconds
    --     If target is elemental
    Say(Caster, "Not Implemented: Bonus damage to elementals")
end
