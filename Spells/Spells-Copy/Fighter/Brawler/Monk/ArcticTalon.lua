--[[
    Script Name    : Spells/Fighter/Brawler/Monk/ArcticTalon.lua
    Script Author  : Dello
    Script Date    : 13/06/2014
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end

    if not IsEpic(Target) then
        AddControlEffect(Target, 3)
    end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 3)
end