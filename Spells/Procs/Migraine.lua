--[[
    Script Name    : Spells/Procs/Migraine.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.12.04 07:12:30
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

