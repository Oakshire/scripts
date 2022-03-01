--[[
    Script Name    : Spells/Fighter/Brawler/Monk/RoundhouseKick.lua
    Script Author  : Jabantiz
    Script Date    : 2014.01.12 06:01:03
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 14 - 23 slashing damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
