--[[
    Script Name    : Spells/Mage/Enchanter/Coercer/Brainshock.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.14 06:03:59
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DoTType, MinVal, MaxVal, PowerDmg, PowerHeal)
    -- Inflicts 14 - 17 mental damage on target instantly and every 6 seconds
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DoTType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DoTType, MinVal)
    end

    -- Decreases power of target by 2 instantly and every 6 seconds
    ModifyPower(Target, PowerDmg)

    -- Increases power of caster by 5
    SpellHeal("Power", PowerHeal, PowerHeal, Caster)
end

function tick(Caster, Target, DoTType, MinVal, MaxVal, PowerDmg, PowerHeal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DoTType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DoTType, MinVal)
    end

    ModifyPower(Target, PowerDmg)
    SpellHeal("Power", PowerHeal, PowerHeal, Caster)
end
