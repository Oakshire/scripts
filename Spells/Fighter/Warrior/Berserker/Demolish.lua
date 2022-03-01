--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/Demolish.lua
    Script Author  : Dello
    Script Date    : 12/06/2014
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
        AddControlEffect(Target, 2)
    end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 2)
end




