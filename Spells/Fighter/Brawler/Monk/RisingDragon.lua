--[[
    Script Name    : Spells/Fighter/Brawler/Monk/RisingDragon.lua
    Script Author  : Dello Updated by neatz09
    Script Date    : 13/06/2014 9/11/19
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, DoTType, MinVal2, MaxVal2)

    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)

    SpellDamage(Target, DoTType, MinVal, MaxVal)

    end
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, DoTType, MinVal2, MaxVal2)
    SpellDamage(Target, DoTType, MinVal, MaxVal)
end

