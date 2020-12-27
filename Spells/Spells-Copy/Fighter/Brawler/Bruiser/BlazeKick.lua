--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/BlazeKick.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.11 05:03:14
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, TickDmgType, TickDmg)
    -- Inflicts 40 - 67 melee damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, TickDmgType, TickDmg)
    -- Inflicts 18 heat damage on target every 6 seconds
    SpellDamage(Target, TickDmgType, TickDmg)
end
