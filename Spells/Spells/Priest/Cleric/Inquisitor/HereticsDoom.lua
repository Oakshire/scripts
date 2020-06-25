--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/HereticsDoom.lua
    Script Author  : neatz09
    Script Date    : 2019.10.04 06:10:28
    Script Purpose : 
                   : 
--]]

-- Inflicts 180 - 220 heat damage on target encounter

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if MaxVal ~= nil and MinVal < MaxVal then
        SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
    else
        SpellDamage(Target, DmgType, MinVal)
    end
end

