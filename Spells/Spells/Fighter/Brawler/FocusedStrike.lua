--[[
    Script Name    : Spells/Fighter/Brawler/FocusedStrike.lua
    Script Author  : Dello
    Script Date    : 2014.07.11 02:07:07
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

