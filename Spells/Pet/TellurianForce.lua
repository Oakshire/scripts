--[[
    Script Name    : Spells/Pet/TellurianForce.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.19 02:11:28
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
    Knockback(Caster, Target, 4000)
end

