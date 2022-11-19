--[[
    Script Name    : Spells/Fighter/Warrior/TellurianForce.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.18 10:11:45
    Script Purpose : 
                   : 
--]]




function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
        Knockback(Caster, Target, 4000)
    end
end

