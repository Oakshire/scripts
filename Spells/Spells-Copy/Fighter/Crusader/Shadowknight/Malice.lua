--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/Malice.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.08 01:01:39
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 9 - 15 disease damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
