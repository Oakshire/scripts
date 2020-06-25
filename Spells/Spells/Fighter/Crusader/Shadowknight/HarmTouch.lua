--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/HarmTouch.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.11 08:01:06
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 846 - 1411 disease damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
