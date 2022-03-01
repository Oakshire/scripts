--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/Roundhouse.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.10 10:03:44
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 9 - 29 crushing damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
