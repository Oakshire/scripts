--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/Beatdown.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.10 10:03:03
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
