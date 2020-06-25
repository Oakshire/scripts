--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/IgnorePain.lua
    Script Author  : Jabantiz
    Script Date    : 2014.03.10 09:03:28
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellHeal("Heal", math.random(MinVal, MaxVal))
    else
        SpellHeal("Heal", MinVal)
    end
end
