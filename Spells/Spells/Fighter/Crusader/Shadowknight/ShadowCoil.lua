--[[
    Script Name    : Spells/Fighter/Crusader/Shadowknight/ShadowCoil.lua
    Script Author  : Dello
    Script Date    : 17/07/2014
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

function tick(Caster, Target, DmgType, MinVal, MaxVal, DoTType, DoTMin, DoTMax)

    if DoTMax ~= nil and DoTMin < DoTMax then
        SpellDamage(Target, DoTType, math.random(DoTMin, DoTMax))
    else
        SpellDamage(Target, DoTType, DoTMin)
    end
end
