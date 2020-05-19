--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/MeteorFist.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.10 09:03:07
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    -- Inflicts 13 - 22 heat damage on target
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end
