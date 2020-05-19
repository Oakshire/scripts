--[[
    Script Name    : Spells/Fighter/Brawler/Monk/CrescentStrike.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.12 06:01:39
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 31 - 52 magic damage on targets in Area of Effect
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
