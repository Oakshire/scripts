--[[
    Script Name    : Spells/Mage/Sorcerer/Warlock/DarkPyre.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.06 07:03:01
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, DoTDmgType, DoTMinVal, DoTMaxVal)
    -- Inflicts 26 - 48 disease damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, DoTDmgType, DoTMinVal, DoTMaxVal)
    -- Inflicts 16 - 29 disease damage on target every 2 seconds
    if DoTMaxVal ~= nil and DoTMinVal < DoTMaxVal then
        SpellDamage(Target, DoTDmgType, math.random(DoTMinVal, DoTMaxVal))
    else
        SpellDamage(Target, DoTDmgType, DoTMinVal)
    end
end
