--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/Firestorm.lua
    Script Author  : Zcoretri
    Script Date    : 2013.17.12 12:06:46
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


