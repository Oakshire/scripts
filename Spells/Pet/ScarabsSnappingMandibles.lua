--[[
    Script Name    : Spells/Pet/ScarabsSnappingMandibles.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.18 09:11:59
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