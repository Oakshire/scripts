--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/RagingBlow.lua
    Script Author  : Dello
    Script Date    : 10/06/2014
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal, AddHate)

    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)

    AddHate(Caster, Target)
    end
end
