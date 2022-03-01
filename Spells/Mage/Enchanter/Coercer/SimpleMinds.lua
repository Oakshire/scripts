--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/SimpleMinds.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.14 06:03:09
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DoTType, MinVal, MaxVal, PowerDmg)
    -- Inflicts 12 - 14 mental damage on target encounter instantly and every 4 seconds
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DoTType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DoTType, MinVal)
    end

    -- Decreases power of target encounter by 4 instantly and every 4 seconds
    ModifyPower(Target, PowerDmg)
end

function tick(Caster, Target, DoTType, MinVal, MaxVal, PowerDmg)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DoTType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DoTType, MinVal)
    end

    ModifyPower(Target, PowerDmg)
end
