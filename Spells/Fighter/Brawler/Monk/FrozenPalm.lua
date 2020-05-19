--[[
    Script Name    : Spells/Fighter/Brawler/Monk/FrozenPalm.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.12 04:01:39
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 11 - 18 cold damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
